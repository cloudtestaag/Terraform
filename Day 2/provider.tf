terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
}

provider "aws" {
  alias = "loc_1"
  region = "us-east-1"
}

provider "aws" {
  alias = "loc_2"
  region = "us-east-2"
}