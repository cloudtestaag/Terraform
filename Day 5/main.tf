provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "example" {
  key_name   = "terraform-demo-roopu"  # Replace with your desired key name
  public_key = file("/path_to/public.pub")  # Replace with the path to your public key file
}

resource "aws_instance" "server" {
  ami                    = "ami-"
  instance_type          = "t2.micro"
  key_name      = aws_key_pair.example.key_name

  connection {
    type        = "ssh"
    user        = "ubuntu"  # Replace with the appropriate username for your EC2 instance
    private_key = file("/path_to/private_key")  # Replace with the path to your private key
    host        = self.public_ip
  }

  provisioner "local-exec" {
    command = "echo 'hi' > temp.txt"
  }


  provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y",  # Update package lists (for ubuntu)
      "sudo apt-get install -y python3-pip",  # Example package installation
      "cd /home/ubuntu",
      "sudo pip3 install flask",
    ]
  }
}