module "ec2-module" {
    source = "../../modules/ec2"

    ami_name = "ami-0162fe8bfebb6ea16"
    instance_type = "t2.micro"
}
# output "ip-public" {
#   value = module.ec2-module.public_ip
# }