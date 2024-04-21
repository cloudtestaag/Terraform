resource "aws_instance" "testing" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = "subnet-"
  key_name = "master"
  tags = {
    Name = "testing"
  }
}