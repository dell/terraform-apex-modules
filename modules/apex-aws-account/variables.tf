/*
Copyright (c) 2024 Dell Inc., or its subsidiaries. All Rights Reserved.

Licensed under the Mozilla Public License Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://mozilla.org/MPL/2.0/

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

variable "aws_account_id" {
  type = string
  description = "The AWS account ID that you would like to connect to APEX"
}

variable "aws_policy_name" {
  type = string
  description = "The name of the policy you would like to connect to APEX, defaults to APEX_AWS_POLICY"
  default = "APEX_AWS_POLICY"
}

variable "aws_role_name" {
  type = string
  description = "The name of the role you would like to connect to APEX, defaults to APEX_AWS_ROLE"
  default = "APEX_AWS_ROLE"
}
