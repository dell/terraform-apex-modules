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

# Get the Policy for the AWS account
data "apex_navigator_aws_permissions" "example" {
}

# Generate a Trust Policy for the AWS account
resource "apex_navigator_aws_trust_policy_generate" "trust_policy" {
  # AWS account ID
  account_id = var.aws_account_id
}

locals {
  # Version of both the policy and role
  version = data.apex_navigator_aws_permissions.example.permissions[0].permission_policy.version
  # Statement of the policy mapped from the apex_navigator_aws_permissions
  policyMappedStatements = [
    for k, v in data.apex_navigator_aws_permissions.example.permissions[0].permission_policy.statement : {
      Sid : v.sid
      Effect : v.effect
      Action : v.action
      Resource : v.resource
      Condition : length(v.iam_aws_service_name) > 0 ? tomap({ "StringLike" = { "iam:AWSServiceName" :  v.iam_aws_service_name  }}) : {}
    }
  ]
  

  # Statement of the assume role policy mapped from the apex_navigator_aws_trust_policy_generate
  assumeRole = [
    for k, v in resource.apex_navigator_aws_trust_policy_generate.trust_policy.statement : {
      Action : v.action
      Effect : v.effect
      Principal : {
        "AWS" : v.principal.aws
      }
      Condition : length(v.condition.string_equals.sts_external_id) > 0 ? tomap({Bool = { "aws:MultiFactorAuthPresent" : v.condition.bool.aws_multi_factor_auth_present}, StringEquals = {"sts:ExternalId" : v.condition.string_equals.sts_external_id}}) : {}
    }
  ]

  depends_on = [resource.apex_navigator_aws_trust_policy_generate.trust_policy]
}

# Create the AWS policy based on the permissions from the apex_navigator_aws_permissions 
resource "aws_iam_role_policy" "test_policy" {
  name = var.aws_policy_name
  role = aws_iam_role.test_role.id

  policy = jsonencode({
    Version   = local.version
    Statement = local.policyMappedStatements
  })

  depends_on = [data.apex_navigator_aws_permissions.example]
}

# Create the role on AWS based on the generated trust policy
resource "aws_iam_role" "test_role" {
  name = var.aws_role_name
  assume_role_policy = jsonencode({
    Version   = local.version
    Statement = local.assumeRole
  })
  depends_on = [ apex_navigator_aws_trust_policy_generate.trust_policy ]
}

# Wait for 30seconds after the role is created to make sure things on the AWS are updated before attempting the connect
resource "time_sleep" "wait_30_seconds" {
  depends_on = [aws_iam_role.test_role]

  create_duration = "30s"
}

# Connect the Apex and AWS account
resource "apex_navigator_aws_account" "example" {
  # AWS account ID
  account_id = var.aws_account_id
  # AWS role ARN created above in aws_iam_role section
  role_arn = resource.aws_iam_role.test_role.arn
  depends_on = [ time_sleep.wait_30_seconds ]
}