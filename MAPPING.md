# getPaymentResponse

## Mapping Tables

Get payments response mapping. 

> | Resp Field |  SAP HANA field |  Description of source field | 
> | ---- |---- |---- |
> | id |  id |  ClearingDocument id | 
> | latestGatewayDate |   ClearingDate |  Payment date | 
> | paymentAmount |  AmountInTransactionCurrency |  Payment Amount | 
> | externalIds |  DocumentReferenceID |  Shipping amount  | 
> | commentText |  notes |  Payment notes | 
> | auditInfo.updatedDate |  ClearingDate |  Payment updated date | 


# getPaymentsMergeEntries

# getPaymentsResponse

## Mapping Tables

Get payments response mapping. 

> | Resp Field |  SAP HANA field |  Description of source field | 
> | ---- |---- |---- |
> | id |  id |  ClearingDocument id | 
> | latestGatewayDate |   ClearingDate |  Payment date | 
> | paymentAmount |  AmountInTransactionCurrency |  Payment Amount | 
> | externalIds |  DocumentReferenceID |  Shipping amount  | 
> | commentText |  notes |  Payment notes | 
> | auditInfo.updatedDate |  ClearingDate |  Payment updated date | 


# getPaymentMergeEntries

# post-payments

## Mapping Tables

Post payments response mapping. 

> | SAP HANA field | CIM |  Description of source field | 
> | ---- |---- |---- |
> | SenderBusinessSystemID | Hardcoded to SAPACC2 | Sender Business System Id | 
> | RecipientBusinessSystemID | Hardcoded to 0M2PAUF | Recipent Business System Id | 
> | ID | UUID() | The unique Id for each Transactions | 
> | UUID | UUID() | The unique Id for each Transactions | 
> | CreationDateTime | Todays Date  | Todays Date format : "yyyy-M-dd'T'HH:mm:ss'Z'" | 
> | SenderParty | Hardcoded to 1001092 | Sender Party Id | 
> | RecipientParty | Hardcoded to 1710-CUST1 | Sender Party Id | 
> | PaymentAdviceID | Invoice Id  | Transaction Invoice Id | 
> | DocumentDate | Todays Date  | Todays date format ; "YYYY-MM-dd" | 
> | PaymentFormCode | Hardcoded to "05" |  Hardcoded as 05 | 
> | PaymentDate | Todays Date | Todays date format ; "YYYY-MM-dd" | 
> | PaymentTransactionInitiatorBankAccountValueDate | Todays Date | Todays date format : "YYYY-MM-dd" | 
> | NetAmount | payload.paymentAmount | Dividing the payment amount by 100 to get actual decimal value | 
> | GrossAmount | payload.paymentAmount | Dividing the payment amount by 100 to get actual decimal value | 
> | BuyerPartyID | 1001092 | Hardcoded to Sender Party Id | 
> | AddressName | Hardcoded to Domestic US Customer 1 | Buyer Address | 
> | CityName | Hardcoded to Atlanta | Buyer city name | 
> | Country | Hardcoded to DE | Buyer Country code | 
> | SuplierPartyID | 1710-CUST1 | Hardcoded to Suplier Party Id | 
> | AddressName | Hardcoded to Test GmbH | Supplier Address | 
> | StreetName | Hardcoded to Franz-Bläsi Str 5 | Supplier street Address | 
> | PostalCode | Hardcoded to 68309 | Supplier Postal Address | 
> | CityName | Hardcoded to PRATTVILLE | Supplier City Name | 
> | Country | Hardcoded to DE | Supplier Country Code | 
> | Region | Hardcoded to 8 | Supplier region Hardcoded to 8 | 
> | CorrespondenceLanguage |  Hardcoded to E | Supplier correspondence Address | 
> | BankAccountStandardID |  Hardcoded to DE05672700250092303701 | Payment Transaction Initiator BankAccount Bank Account StandardID | 
> | BankAccountID | Hardcoded to 092303701 | Payment Transaction Initiator BankAccount BankAccountID | 
> | HolderName | Hardcoded to SAP AG | Payment Transaction Initiator Bank Account Holder Name | 
> | Country | Hardcoded to DE | Payment Transaction Initiator Bank Account Country | 
> | Country | Hardcoded to DE | Supplier Country Code | 
> | BankStandardID | Hardcoded to 8 | Supplier region Hardcoded to 8 | 
> | BankRoutingID | Hardcoded to 67270025 | Payment Transaction Initiator Bank Account Bank Routing ID | 
> | BankName | Hardcoded to DE | Supplier Country Code | 
> | BankAccountStandardID |  Hardcoded to Deutsche Bank AG Wiesloch 2 | Payment Transaction Initiator Bank Account Bank Name | 
> | BankAccountID | Hardcoded to DE97100200300012344321 | Payment Transaction Destinated Bank Account Bank Account Standard ID | 
> | HolderName | Hardcoded to Test GmbH | Payment Transaction Destinated Bank Account Holder Name | 
> | Country | Hardcoded to DE | Payment Transaction Destinated Bank Account Country | 
> | BankStandardID | Hardcoded to PTSDDENA | Payment Transaction Destinated Bank Account Bank StandardID | 
> | BankRoutingID |  Hardcoded to 10020030 | Payment Transaction Destinated Bank Account Bank RoutingID | 
> | BankName | Hardcoded to Deutsche Bank Waldorf | Payment Transaction Destinated Bank Account Bank Name | 
> | ID | Id | InvoiceId | 
> | TypeCode | Hardcode to 01 | Type Code | 
> | ItemID | Hardcode to 5100031833 | ItemID | 
> | ItemTypeCode | Hardcode to 01 | ItemTypeCode | 


