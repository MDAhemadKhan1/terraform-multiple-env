terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket         = "remote-state-82s"
    key            = "workspace-demo"
    region         = "us-east-1"
    dynamodb_table = "state-locking-82s"

  }
}



provider "aws" {
  # Configuration options
  region = "us-east-1"
}
