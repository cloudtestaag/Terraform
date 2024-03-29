resource "aws_instance" "example" {
  ami = var.amiid
  subnet_id = "subnet-"
  instance_type = "t2.micro"
  key_name = "master"
}