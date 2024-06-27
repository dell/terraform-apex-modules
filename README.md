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
# Terraform Modules for Dell Technologies Apex

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](about/CODE_OF_CONDUCT.md)
[![License](https://img.shields.io/badge/License-MPL_2.0-blue.svg)](LICENSE)

Terraform modules package multiple resources together, allowing for efficient, modular design. They simplify code management and can be easily shared across different projects. For more information refer this [link](https://developer.hashicorp.com/terraform/language/modules) 

In this release, we are introducing Terraform modules for the purpose of user management.

## Table of contents

* [Code of Conduct](https://github.com/dell/dell-terraform-providers/blob/main/docs/CODE_OF_CONDUCT.md)
* [Maintainer Guide](https://github.com/dell/dell-terraform-providers/blob/main/docs/MAINTAINER_GUIDE.md)
* [Committer Guide](https://github.com/dell/dell-terraform-providers/blob/main/docs/COMMITTER_GUIDE.md)
* [Contributing Guide](https://github.com/dell/dell-terraform-providers/blob/main/docs/CONTRIBUTING.md)
* [List of Adopters](https://github.com/dell/dell-terraform-providers/blob/main/docs/ADOPTERS.md)
* [Support](#support)
* [Security](https://github.com/dell/dell-terraform-providers/blob/main/docs/SECURITY.md)
* [License](#license)
* [Prerequisites](#prerequisites)
* [List of Submodules in Terraform Modules for Dell Apex](#list-of-submodules-in-terraform-modules-for-dell-Apex)

## Support
For any Terraform Modules for Dell Apex issues, questions or feedback, please follow our [support process](https://github.com/dell/dell-terraform-providers/blob/main/docs/SUPPORT.md)

## License
The Terraform Modules for Dell Apex is released and licensed under the MPL-2.0 license. See [LICENSE](LICENSE) for the full terms.

## Prerequisites

| **Terraform Provider**  | **OS**                    | **Terraform**               | **Golang** |
|------------------------ |:-----------------------   |:--------------------------  |------------|
| v1.0.0-beta.2             | ubuntu22.04 <br>  rhel9.x | 1.5.x <br> 1.6.x            | 1.21       |

## List of Submodules in Terraform Modules for Dell Apex
  * [Apex-Aws-Account](examples/apex-aws-account/README.md)

## Generate Documentation
1. Install [terraform-docs](https://terraform-docs.io/user-guide/installation/) 
2. Run `make docs`