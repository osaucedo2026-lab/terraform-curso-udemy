terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.36.0, !=4.43.0"
    }
  }
  required_version = "1.16.2"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.tags_project_genericos
  }
}