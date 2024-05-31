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
  required_version = ">= 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      required_version = ">= 5.50.0"
      version = ">= 5.50.0"
    }
    apex = {
      source = "dell/apex"
      required_version = ">= 1.0.0-beta"
      version = ">= 1.0.0-beta"
    }
    time = {
      source = "hashicorp/time"
      required_version = ">= 0.11.1"
      version = ">= 0.11.1"
    }
  }
}
