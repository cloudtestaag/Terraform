provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  subnet_id = "subnet-"
  key_name = "master"
  tags = {
    Name = "testing"
  }
}