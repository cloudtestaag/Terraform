provider "aws" {
  region = "us-east-1"
}

module "testing" {
  source = "./modules/ec2_instance"
  amiid = "ami-080e1f13689e07408"
}

output "testing" {
  value = module.testing
}