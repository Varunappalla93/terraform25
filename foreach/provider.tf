terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  
backend "s3" {
    bucket = "76sbucket"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "76slocking"
  }
}


provider "aws" {
  region = "us-east-1"
}