terraform {
  required_version = ">= 1.5.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = "default"
  # Credentials will be provided by GitHub Actions
  # via AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables
}