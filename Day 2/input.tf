variable "ami" {
  default = "ami-080e1f13689e07408"
}

locals {
  trying = file("/Terraform/Day 1/main.tf")
}

variable "instance" {
    }