terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.49.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "us-east-1"
}