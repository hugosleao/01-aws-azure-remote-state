terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.15.1"
    }
  }
  backend "s3" {
    bucket = "bucket01-remote-state"
    key    = "aws-vpc"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "hugosleao"
      managed-by = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
}