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
  region = "ap-northeast-1"
}

# get key pair lama 
data "aws_key_pair" "awszakky" {
  key_name = "awszakky"
}
resource "aws_instance" "web" {
  ami           = "ami-0162fe8bfebb6ea16"
  instance_type = "t2.micro"
  key_name = data.aws_key_pair.awszakky.key_name # attach key pair to ec2

  tags = {
    Name = "HelloWorld"
  }
}