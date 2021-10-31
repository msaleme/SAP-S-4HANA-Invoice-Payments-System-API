%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  id: "2000000007",
  latestGatewayDate: "2021-03-12",
  paymentAmount: 38,
  externalIds: [
    "17300001"
  ],
  commentText: "1234233",
  paymentStatus: "",
  authorizationProcessingMode: "",
  paymentNumber: "",
  paymentType: "",
  paymentEffectiveDate: "2021-03-12",
  auditInfo: {
    createdDate: null,
    updatedDate: "2021-03-12T20:33:44Z",
    updatedBy: "",
    createdBy: "",
    isDeleted: false
  }
})