variable "instance_type" {
  default = "t2.micro"
  type = string
  description = "type of the instance"
}

variable "region" {
  default = "ap-northeast-1"
  type = string
  description = "region where the instance will be created"
}
variable "ami_name" {
  default = "ami-0162fe8bfebb6ea16"
  type = string
  description = "name of the AMI"
}

variable "instance_count" {
  default = 1 // nilai default jika tidak di defenisikan di terraform.tfvars
  type = number
  description = "number of instances to be created"
}