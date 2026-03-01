# my-asg-on-aws
## Prerequisites

Before we begin, make sure you have the following prerequisites in place:

- **An AWS account** with appropriate permissions to create and manage resources.
- **Terraform installed** on your local machine. You can download it from the official Terraform website and follow the installation instructions for your operating system.

### Step 1: Provider Configuration

Create a file named `provider.tf` with the following content:

```
provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}
```
 
