# EC2 instance creation
resource "aws_instance" "public-server" {
  ami           = var.ami
  instance_type = var.instance_type

  associate_public_ip_address = true
  subnet_id                   = aws_subnet.subnet[0].id

  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_http.id
  ]

  tags = {
    Name : var.names["public_instance"]
  }

  user_data = <<-EOF
        #!/bin/bash
        apt update
        apt install nginx -y
        EOF


  depends_on = [aws_internet_gateway.internet-gateway]

}

resource "aws_instance" "private-server" {
  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = aws_subnet.subnet[1].id

  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_http.id
  ]

  tags = {
    Name : var.names["private_instance"]
  }

  user_data = <<-EOF
        #!/bin/bash
        apt update
        apt install apache2 -y
        EOF

  depends_on = [aws_nat_gateway.public-nat]
}