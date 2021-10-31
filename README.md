# accel-saphana-invoicepayments-sys-api

This System API is used to query invoice payments from S/4HANA. The target system can be replaced with a system of choice.

## Available Operations

### Post Payments

The `post:/payments` endpoint is used to make Invoice payments from the target system. The response format is JSON.

### Query Invoice Payments

The `get:/payments` endpoint is used to retrieve multiple invoice payments from the target system. The response format is JSON.

### Query Invoice Payment

The `get:/payments/{id}` endpoint is used to retrieve an invoice payment from the target system by its ID. The response format is JSON.

## Installation instructions For Studio

The following instructions assume you have already configured your Maven
`settings.xml` file according to the Setup Guide.

- Clone the project using any Github client or Anypoint Studio Git plugin
- Import the project into your workspace
- Modify the `config-local.yaml` properties appropriately
- To run the project, right-click the project and select Run As --> Mule Application

## Deployment instructions For CloudHub

Ensure the Maven profile `CloudHub-DEV` has been properly configured in your
`settings.xml` file. In particular, make sure the Anypoint MQ client ID and secret
are provided.

Update the `config-dev.yaml` properties appropriately and then use one of the following
scripts to deploy application to Cloud Hub:

- packageDeploy.sh or deployOnly.sh (Mac/Linux)
- packageDeploy.cmd or deployOnly.cmd (Windows)
