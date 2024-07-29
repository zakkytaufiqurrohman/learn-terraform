output "ip-pubblic" {
    # value = aws_instance.web.public_ip // kalau instance hanya satu
    value = aws_instance.web[*].public_ip // kalau instance lebih dari 1
    description = "ip public of instance"
}