terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags={
      Environment="test"
      Project="web-server"
    }
  }
}