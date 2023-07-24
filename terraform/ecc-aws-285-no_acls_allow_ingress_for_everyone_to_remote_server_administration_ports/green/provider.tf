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
      CustodianRule     = "ecc-aws-285-no_acls_allow_ingress_for_everyone_to_remote_server_administration_ports"
      ComplianceStatus = "Green"
    }
  }
}