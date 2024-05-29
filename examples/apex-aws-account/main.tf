#################################
# Apex AWS Account Module
#################################

module "apex_aws_account" {
  # Here points to the apex-aws-account submodule in the modules folder, this will have to update based on your enviorment.
  source = "../../modules/apex-aws-account"
  
  # Required Inputs
  aws_config_path = var.aws_config_path
  aws_credentials_path = var.aws_credentials_path
  aws_account_id = var.aws_account_id

  # Optional Inputs that have a default value if unset
  apex_host = var.apex_host
  aws_policy_name = var.aws_policy_name
  aws_role_name = var.aws_role_name
}