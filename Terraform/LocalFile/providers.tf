terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.49.0"
    }
  }
  backend "s3" {
    bucket = "andrterraformbackend"
    encrypt = true
    key    = "prod/terraform.tfstate"
    dynamodb_table = "terraform-up-and-running-locks"
    region = "us-east-1"
  }
}