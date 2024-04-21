provider "aws" {
  region = "us-east-1"
}

variable "amid" {
  
}

variable "instance_type" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.large"
    "stage" = "t2.medium"
    "prod" = "t2.xlarge"
  }
}

module "workspace" {
  source = "./modules/workspaces"
  ami_id = var.amid
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}