
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.47.0"
    }
  }
}

provider "aws" {
  # Configuration options
  alias = "virginia"
  region = "us-east-1"
}

provider "aws" {
  # Configuration options
  alias = "ohio"
  region = "us-east-2"
}