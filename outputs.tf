output "public_instance_ip" {
  value = aws_instance.public-server.public_ip
}

output "private_instance_ip" {
  value = aws_instance.private-server.private_ip
}

