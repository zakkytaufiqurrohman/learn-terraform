# get key pair lama 
data "aws_key_pair" "awszakky" {
  key_name = "awszakky"
}
resource "aws_instance" "web" {
  ami           = var.ami_name
  instance_type = var.instance_type
  key_name = data.aws_key_pair.awszakky.key_name # attach key pair to ec2

  tags = {
    Name = "provisioning by terraform"
  }
}