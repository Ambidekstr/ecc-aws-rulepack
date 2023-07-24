terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
  }
}

provider "aws" {
  profile = var.profile
  region  = var.default-region
  default_tags {
    tags = {
      CustodianRule     = "ecc-aws-366-secrets_manager_successful_rotation_check"
      ComplianceStatus = "Green"
    }
  }
}
