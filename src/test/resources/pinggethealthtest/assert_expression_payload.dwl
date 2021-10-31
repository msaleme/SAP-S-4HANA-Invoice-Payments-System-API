%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  status: "OK",
  apiName: "accel-saphana-invoicepayments-sys-api",
  apiVersion: "1.3.1"
})