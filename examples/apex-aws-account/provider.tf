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


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
    apex = {
      source = "dell/apex"
      version = "1.0.0-beta2"
    }
    time = {
      source = "hashicorp/time"
      version = "0.11.1"
    }
  }
}

// Example but authenticate with AWS however you would like, more information here: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html
provider "aws" {
  shared_config_files      = [var.aws_config_path]
  shared_credentials_files = [var.aws_credentials_path]
}

// For production instances the host should be https://apex.apis.dell.com/apex
provider "apex" {
  host  = var.apex_host 
}