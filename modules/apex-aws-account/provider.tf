terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
    apex = {
      source = "dell/apex"
      version = "1.0.0-beta"
    }
    time = {
      source = "hashicorp/time"
      version = "0.11.1"
    }
  }
}

provider "aws" {
  shared_config_files      = [var.aws_config_path]
  shared_credentials_files = [var.aws_credentials_path]
}

provider "apex" {
  host  = var.apex_host 
}