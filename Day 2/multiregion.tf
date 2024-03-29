resource "aws_instance" "test" {
  count = 2
  ami = var.ami
  instance_type = "t2.micro"
  subnet_id = "subnet-"
  key_name = "master"
  provider = aws.loc_1
}


resource "aws_instance" "test-2" {
    for_each = var.instance
    ami = 2>1 ? "ami-0b8b44ec9a8f90422" : "testotium"
    instance_type = "t2.micro"
    subnet_id = "subnet-"
    key_name = "master2"
    provider = aws.loc_2
    tags = {
        Name = each.value.Name
    }
}