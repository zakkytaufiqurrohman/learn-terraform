terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# get key pair lama 
data "aws_key_pair" "awszakky" {
  key_name = "awszakky"
}
resource "aws_instance" "web" {
  ami           = var.ami_name
  instance_type = var.instance_type
  key_name = data.aws_key_pair.awszakky.key_name # attach key pair to ec2
  count = var.instance_count

  tags = {
    Name = "provisioning by terraform"
  }
}