provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = ""
}

resource "aws_dynamodb_table" "terraform-lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "lockID"

  attribute {
    name = "lockID"
    type = "S"
  }
}