<!--
Copyright (c) 2023 Dell Inc., or its subsidiaries. All Rights Reserved.

Licensed under the Mozilla Public License Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://mozilla.org/MPL/2.0/


Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->
# Apex AWS Account Connection

This module uses the terraform-apex and terraform-aws providers to connect an Apex and AWS account. It does the following steps,
1. Gets the APEX AWS permissions policy
2. Uses APEX to generate and AWS trust policy
3. Creates a policy on AWS with the information gathered in step 1
4. Creates a role on AWS with the information gathered in step 2
5. After the Role is created, it will return the Roles `ARN` value which we input to do the final step to make the connection between Apex and the AWS account.

# Schema

## Inputs
- `aws_config_path` (required) (string) Path to the AWS config file on your local machine check https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html for more information
- `aws_credentials_path`(required) (string) Path to the AWS credentials file on your local machine check https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html for more information
- `aws_account_id` (required) (string) The AWS account ID that you would like to connect to APEX
- `aws_policy_name` (optional) (string) The name of the policy you would like to connect to APEX, defaults to APEX_AWS_POLICY
- `aws_role_name` (optional) (string) The name of the role you would like to connect to APEX, defaults to APEX_AWS_ROLE
- `apex_host` (optional) (string) The instance of the Apex Navigator, defaults https://apex.apis.dell.com/apex and does not need to be changed in production environments

## Prerequisites

This module can be used with terraform-apex 1.0.0-beta or greater

## Usage
Please refer the [Example](../../examples/apex-aws-account-connection/main.tf). After providing the proper values to all the attributes, then in the workspace run
```
terraform init
terraform apply
```
