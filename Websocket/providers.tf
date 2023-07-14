terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9"
    }
  }
  backend "s3" {
    bucket         = "tungnt-terraform-backend-state"
    key            = "terraformstate/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}
provider "aws" {
  region = "us-east-2"
}