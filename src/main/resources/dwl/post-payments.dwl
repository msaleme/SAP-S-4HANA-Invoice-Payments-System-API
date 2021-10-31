%dw 2.0
output application/xml
ns ns0 http://sap.com/xi/EDI
---
/**
 * Post payments response mapping.
 * @table SAP HANA field,CIM, Description of source field
 * @row SenderBusinessSystemID,Hardcoded to SAPACC2,Sender Business System Id
 * @row RecipientBusinessSystemID,Hardcoded to 0M2PAUF,Recipent Business System Id
 * @row ID,UUID(),The unique Id for each Transactions
 * @row UUID,UUID(),The unique Id for each Transactions
 * @row CreationDateTime,Todays Date ,Todays Date format : "yyyy-M-dd'T'HH:mm:ss'Z'"
 * @row SenderParty,Hardcoded to 1001092,Sender Party Id
 * @row RecipientParty,Hardcoded to 1710-CUST1,Sender Party Id
 * @row PaymentAdviceID,Invoice Id ,Transaction Invoice Id
 * @row DocumentDate,Todays Date ,Todays date format ; "YYYY-MM-dd"
 * @row PaymentFormCode,Hardcoded to "05", Hardcoded as 05
 * @row PaymentDate,Todays Date,Todays date format ; "YYYY-MM-dd"
 * @row PaymentTransactionInitiatorBankAccountValueDate,Todays Date,Todays date format : "YYYY-MM-dd"
 * @row NetAmount,payload.paymentAmount,Dividing the payment amount by 100 to get actual decimal value
 * @row GrossAmount,payload.paymentAmount,Dividing the payment amount by 100 to get actual decimal value
 * @row BuyerPartyID,1001092,Hardcoded to Sender Party Id
 * @row AddressName,Hardcoded to Domestic US Customer 1,Buyer Address
 * @row CityName,Hardcoded to Atlanta,Buyer city name
 * @row Country,Hardcoded to DE,Buyer Country code
 * @row SuplierPartyID,1710-CUST1,Hardcoded to Suplier Party Id
 * @row AddressName,Hardcoded to Test GmbH,Supplier Address
 * @row StreetName,Hardcoded to Franz-Bläsi Str 5,Supplier street Address
 * @row PostalCode,Hardcoded to 68309,Supplier Postal Address
 * @row CityName,Hardcoded to PRATTVILLE,Supplier City Name
 * @row Country,Hardcoded to DE,Supplier Country Code
 * @row Region,Hardcoded to 8,Supplier region Hardcoded to 8
 * @row CorrespondenceLanguage, Hardcoded to E,Supplier correspondence Address
 * @row BankAccountStandardID, Hardcoded to DE05672700250092303701,Payment Transaction Initiator BankAccount Bank Account StandardID
 * @row BankAccountID,Hardcoded to 092303701,Payment Transaction Initiator BankAccount BankAccountID
 * @row HolderName,Hardcoded to SAP AG,Payment Transaction Initiator Bank Account Holder Name
 * @row Country,Hardcoded to DE,Payment Transaction Initiator Bank Account Country
 * @row Country,Hardcoded to DE,Supplier Country Code
 * @row BankStandardID,Hardcoded to 8,Supplier region Hardcoded to 8
 * @row BankRoutingID,Hardcoded to 67270025,Payment Transaction Initiator Bank Account Bank Routing ID
 * @row BankName,Hardcoded to DE,Supplier Country Code
 * @row BankAccountStandardID, Hardcoded to Deutsche Bank AG Wiesloch 2,Payment Transaction Initiator Bank Account Bank Name
 * @row BankAccountID,Hardcoded to DE97100200300012344321,Payment Transaction Destinated Bank Account Bank Account Standard ID
 * @row HolderName,Hardcoded to Test GmbH,Payment Transaction Destinated Bank Account Holder Name
 * @row Country,Hardcoded to DE,Payment Transaction Destinated Bank Account Country
 * @row BankStandardID,Hardcoded to PTSDDENA,Payment Transaction Destinated Bank Account Bank StandardID
 * @row BankRoutingID, Hardcoded to 10020030,Payment Transaction Destinated Bank Account Bank RoutingID
 * @row BankName,Hardcoded to Deutsche Bank Waldorf,Payment Transaction Destinated Bank Account Bank Name
 * @row ID,Id,InvoiceId
 * @row TypeCode,Hardcode to 01,Type Code
 * @row ItemID,Hardcode to 5100031833,ItemID
 * @row ItemTypeCode,Hardcode to 01,ItemTypeCode 
 */
{
	ns0#PaymentAdviceNotification: {
		MessageHeader: {
			SenderBusinessSystemID: p('sap.hana.getPayments.SenderBusinessSystemID'),
			RecipientBusinessSystemID: p('sap.hana.getPayments.RecipientBusinessSystemID'),
			ID: vars.uniqueId,
			UUID: vars.uniqueSpecialId,
			CreationDateTime: vars.CreationDate,
			SenderParty: {
				InternalID:  p('sap.hana.getPayments.SenderParty.InternalID'),
				StandardID: null
			},
			RecipientParty: {
				InternalID: p('sap.hana.getPayments.RecipientParty.InternalID')
			}
		},
		PaymentAdviceNotification: {
			PaymentAdviceID:  vars.InvoicerefId default vars.uniqueId[0 to 15],
			DocumentDate: vars.PostingDate,
			PaymentFormCode: p('sap.hana.getPayments.PaymentFormCode'),
			PaymentDate: vars.PostingDate,
			PaymentTransactionInitiatorBankAccountValueDate: vars.PostingDate,
			NetAmount @(currencyCode: p('sap.hana.getPayments.currencyCode')): ((payload.paymentAmount)/100),
			GrossAmount @(currencyCode: p('sap.hana.getPayments.currencyCode')): ((payload.paymentAmount)/100),
			Party @(PartyType: "PAYER"): {
				BuyerPartyID: p('sap.hana.getPayments.SenderParty.InternalID'),
				Address: {
					AddressName:  p('sap.hana.getPayments.BuyerAddress'),
					CityName: p('sap.hana.getPayments.BuyerCityName'),
					Country: p('sap.hana.getPayments.BuyerCountry')
				}
			},
			Party @(PartyType: "PAYEE"): {
				SupplierPartyID: p('sap.hana.getPayments.RecipientParty.InternalID'),
				Address: {
					AddressName: p('sap.hana.getPayments.SupplierAddress'),
					StreetName: p('sap.hana.getPayments.SupplierStreetName'),
					PostalCode: p('sap.hana.getPayments.SupplierPostalCode'),
					CityName: p('sap.hana.getPayments.SupplierCityName'),
					Country: p('sap.hana.getPayments.SupplierCountry'),
					Region: p('sap.hana.getPayments.SupplierRegion'),
					CorrespondenceLanguage: p('sap.hana.getPayments.CorrespondenceLanguage')
				}
			},
			PaymentTransactionInitiatorBankAccount: {
				BankAccountStandardID: p('sap.hana.getPayments.PaymentTransactionInitiatorBankAccountBankAccountStandardID'),
				BankAccountID: p('sap.hana.getPayments.PaymentTransactionInitiatorBankAccountBankAccountID'),
				HolderName: p('sap.hana.getPayments.PaymentTransactionInitiatorBankAccountHolderName'),
				Country: p('sap.hana.getPayments.PaymentTransactionInitiatorBankAccountCountry'),
				BankStandardID: p('sap.hana.getPayments.PaymentTransactionInitiatorBankAccountBankStandardID'),
				BankRoutingID: p('sap.hana.getPayments.PaymentTransactionInitiatorBankAccountBankRoutingID'),
				BankName: p('sap.hana.getPayments.PaymentTransactionInitiatorBankAccountBankName')
				
				
			},
			PaymentTransactionDestinatedBankAccount: {
				BankAccountStandardID: p('sap.hana.getPayments.PaymentTransactionDestinatedBankAccountBankAccountStandardID'),
				BankAccountID: p('sap.hana.getPayments.PaymentTransactionDestinatedBankAccountBankAccountID'),
				HolderName: p('sap.hana.getPayments.PaymentTransactionDestinatedBankAccountHolderName'),
				Country: p('sap.hana.getPayments.PaymentTransactionDestinatedBankAccountCountry'),
				BankStandardID: p('sap.hana.getPayments.PaymentTransactionDestinatedBankAccountBankStandardID'),
				BankRoutingID: p('sap.hana.getPayments.PaymentTransactionDestinatedBankAccountBankRoutingID'),
				BankName: p('sap.hana.getPayments.PaymentTransactionDestinatedBankAccountBankName')
				
				
			},
			PaymentExplanationItem: {
				PaymentAdviceItemID: "1",
				BusinessTransactionDocumentDate: vars.PostingDate,
				NetAmount @(currencyCode: p('sap.hana.getPayments.currencyCode')): ((payload.paymentAmount)/100),
				GrossAmount @(currencyCode: p('sap.hana.getPayments.currencyCode')): ((payload.paymentAmount)/100),
				TransactionCurrencyGrossAmount @(currencyCode: p('sap.hana.getPayments.currencyCode')): ((payload.paymentAmount)/100),
				Note @(languageCode: p('sap.hana.getPayments.languageCode')): null,
				PaymentReferenceID: {
				ID: vars.InvoicerefId,
				TypeCode: p('sap.hana.getPayments.TypeCode'),
				ItemID: p('sap.hana.getPayments.ItemID'),
				ItemTypeCode: p('sap.hana.getPayments.ItemTypeCode')
				
			}
				
			}
		}
	}
}