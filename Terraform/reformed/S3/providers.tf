terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.32.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "us-east-1"
}