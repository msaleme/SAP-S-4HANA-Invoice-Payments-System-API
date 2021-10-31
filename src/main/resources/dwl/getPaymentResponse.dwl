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

{
	
	id : payload.id,
	latestGatewayDate : payload.paymentDate,
	paymentAmount: payload.amount,
	externalIds: [payload.referenceId],
    commentText: payload.notes,
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: payload.paymentDate,
	auditInfo: {
		createdDate: payload.createdDate,
		updatedDate: convertDate(payload.updatedDate),
		updatedBy: "",
  		createdBy: "",
  		isDeleted: false
	}
}