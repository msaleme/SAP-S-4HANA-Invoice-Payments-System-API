%dw 2.0
output application/json
fun convertDate(val) = if(!isEmpty(val)) val >> 'UTC' else null

---

/**
 * Get payments response mapping.
 * @table Resp Field, SAP HANA field, Description of source field
 * @row id, id, ClearingDocument id
 * @row latestGatewayDate,  ClearingDate, Payment date
 * @row paymentAmount, AmountInTransactionCurrency, Payment Amount
 * @row externalIds, DocumentReferenceID, Shipping amount 
 * @row commentText, notes, Payment notes
 * @row auditInfo.updatedDate, ClearingDate, Payment updated date
 */

payload map {
	
	id : $.id,
	latestGatewayDate : $.paymentDate,
	paymentAmount: $.amount,
	externalIds: [$.referenceId],
    commentText: $.notes,
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: $.paymentDate,
	auditInfo: {
		createdDate: $.createdDate,
		updatedDate: convertDate($.updatedDate),
		updatedBy: "",
  		createdBy: "",
  		isDeleted: false
	}
}