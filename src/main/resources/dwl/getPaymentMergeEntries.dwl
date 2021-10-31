%dw 2.0
output application/json
import mergeWith from dw::core::Objects
var updatedDate = vars.queryParams.updatedDate default "1900-01-01T00:00:00"
var journalEntries= payload filter ($.AccountingDocument != $.ClearingAccountingDocument) map (item) -> ({
    id: item.ClearingAccountingDocument,
    parentId: item.AccountingDocument,
    referenceId: if(!isBlank(item.DocumentReferenceID)) item.DocumentReferenceID else item.AssignmentReference,
    notes: item.AccountingDocumentHeaderText,
    originalReferenceDocument: item.OriginalReferenceDocument
})
var clearingEntries= payload filter ($.AccountingDocument == $.ClearingAccountingDocument) map (item) -> ({
    paymentDate: item.ClearingDate,
    id: item.ClearingAccountingDocument,
    amount: item.AmountInTransactionCurrency,
    currency: item.TransactionCurrency,
    updatedDate: (item.ClearingDate ) ++ item.CreationTime
}) 

var filteredClearingEntries = clearingEntries filter ($.updatedDate > updatedDate)
var mergedPayments =  (
                journalEntries map ((item) -> item mergeWith ((filteredClearingEntries filter ($.id == item.id))[0]
                ))
            )
---
 (mergedPayments filter !isBlank($.amount) )[0]
