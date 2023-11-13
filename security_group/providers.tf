terraform {
  required_version = ">1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.22.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVBZ2T5DCYIG5GABB"
    secret_key = "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"
}
