terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

module "iam" {
  source = "../modules/iam"
  prefix = var.prefix
  tags   = var.tags
}
