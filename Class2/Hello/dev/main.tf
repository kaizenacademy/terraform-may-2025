terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

module vpc {
    source = "../vpc"
    environment = var.environment
    vpc_cidr = var.vpc_cidr
    subnet1_cidr = var.subnet_cidr
}

variable region {}
variable environment {}
variable vpc_cidr {}
variable subnet_cidr {}

module ec2 {
    source = "../ec2"
    ami_id = "ami-04158184f60ea8b5e"
    instance_type = "t3.micro"
    subnet_id = module.vpc.subnet
}