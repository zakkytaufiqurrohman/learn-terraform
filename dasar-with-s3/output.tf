output "ip_public_address" {
  value = aws_instance.web.public_ip
}
output "instance_ids" {
  value = aws_instance.web.id
}