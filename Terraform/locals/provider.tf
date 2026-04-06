terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }

  backend "s3" {
    bucket         = "statefile-config-sandeep"
    key            = "locals_sandeep_terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}



provider "aws" {
    region = "us-east-1"
  # Configuration options
}