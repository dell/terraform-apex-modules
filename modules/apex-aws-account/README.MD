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

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_apex"></a> [apex](#requirement\_apex) | >= 1.0.0-beta |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.50.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | >= 0.11.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_apex"></a> [apex](#provider\_apex) | >= 1.0.0-beta.2 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.50.0 |
| <a name="provider_time"></a> [time](#provider\_time) | >= 0.11.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [apex_navigator_aws_account.example](https://registry.terraform.io/providers/dell/apex/latest/docs/resources/navigator_aws_account) | resource |
| [apex_navigator_aws_trust_policy_generate.trust_policy](https://registry.terraform.io/providers/dell/apex/latest/docs/resources/navigator_aws_trust_policy_generate) | resource |
| [aws_iam_role.test_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.test_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [time_sleep.wait_30_seconds](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [apex_navigator_aws_permissions.example](https://registry.terraform.io/providers/dell/apex/latest/docs/data-sources/navigator_aws_permissions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_id"></a> [aws\_account\_id](#input\_aws\_account\_id) | The AWS account ID that you would like to connect to APEX | `string` | n/a | yes |
| <a name="input_aws_policy_name"></a> [aws\_policy\_name](#input\_aws\_policy\_name) | The name of the policy you would like to connect to APEX, defaults to APEX\_AWS\_POLICY | `string` | `"APEX_AWS_POLICY"` | no |
| <a name="input_aws_role_name"></a> [aws\_role\_name](#input\_aws\_role\_name) | The name of the role you would like to connect to APEX, defaults to APEX\_AWS\_ROLE | `string` | `"APEX_AWS_ROLE"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->