%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
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
  }, 
  {
    id: "2000000006",
    latestGatewayDate: "2021-03-12",
    paymentAmount: 3101.23,
    externalIds: [
      "17300001"
    ],
    commentText: "243214223",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-12",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-12T20:19:03Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000008",
    latestGatewayDate: "2021-03-15",
    paymentAmount: 3101.23,
    externalIds: [
      "17300001"
    ],
    commentText: "243214223",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-15",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-15T10:15:25Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000005",
    latestGatewayDate: "2021-03-12",
    paymentAmount: 100,
    externalIds: [
      "REFERENCE"
    ],
    commentText: "1234233",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-12",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-12T14:43:28Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000002",
    latestGatewayDate: "2021-03-10",
    paymentAmount: -220,
    externalIds: [
      ""
    ],
    commentText: "20210310-M0000",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-10",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-10T22:34:26Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000002",
    latestGatewayDate: "2021-03-10",
    paymentAmount: -220,
    externalIds: [
      ""
    ],
    commentText: "20210310-M0000",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-10",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-10T22:34:26Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000000",
    latestGatewayDate: "2021-03-09",
    paymentAmount: 200,
    externalIds: [
      "4500000676"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-09",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-09T21:10:25Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000003",
    latestGatewayDate: "2021-03-10",
    paymentAmount: 220,
    externalIds: [
      "TEST"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-10",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-10T22:52:11Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000004",
    latestGatewayDate: "2021-03-11",
    paymentAmount: 10,
    externalIds: [
      "TESTDOC"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-11",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-11T14:34:00Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000009",
    latestGatewayDate: "2021-03-15",
    paymentAmount: 10,
    externalIds: [
      "ACCL1003"
    ],
    commentText: "243214223",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-15",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-15T17:21:12Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000010",
    latestGatewayDate: "2021-03-15",
    paymentAmount: 10,
    externalIds: [
      "ACCL1004"
    ],
    commentText: "243214223",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-15",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-15T18:58:14Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000011",
    latestGatewayDate: "2021-03-17",
    paymentAmount: 10,
    externalIds: [
      "ACCL1004"
    ],
    commentText: "243214223",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-17",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-17T16:46:18Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000012",
    latestGatewayDate: "2021-03-17",
    paymentAmount: 10,
    externalIds: [
      "ACCLT2006"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-17",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-17T17:03:55Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000013",
    latestGatewayDate: "2021-03-17",
    paymentAmount: 10,
    externalIds: [
      "ACCLT2007"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-17",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-17T20:05:25Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000014",
    latestGatewayDate: "2021-03-18",
    paymentAmount: 10,
    externalIds: [
      "ACCLT2008"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-18",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-18T13:16:59Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000015",
    latestGatewayDate: "2021-03-19",
    paymentAmount: 10,
    externalIds: [
      "ACCLT2009"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-19",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-19T15:32:04Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }, 
  {
    id: "2000000016",
    latestGatewayDate: "2021-03-22",
    paymentAmount: 10,
    externalIds: [
      "ACCLT20011"
    ],
    commentText: "",
    paymentStatus: "",
    authorizationProcessingMode: "",
    paymentNumber: "",
    paymentType: "",
    paymentEffectiveDate: "2021-03-22",
    auditInfo: {
      createdDate: null,
      updatedDate: "2021-03-22T00:43:32Z",
      updatedBy: "",
      createdBy: "",
      isDeleted: false
    }
  }])