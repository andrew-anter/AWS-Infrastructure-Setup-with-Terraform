# public route table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = var.all_cidr_block
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = {
    "Name" : var.names["public_route_table"]
  }
}

# associate public subnet to route table
resource "aws_route_table_association" "public-subnet-association" {
  subnet_id      = aws_subnet.subnet[0].id
  route_table_id = aws_route_table.public-route-table.id
}



# private route table
resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = var.all_cidr_block
    gateway_id = aws_nat_gateway.public-nat.id
  }

  tags = {
    "Name" : var.names["private_route_table"]
  }
}

# associate private subnet to route table
resource "aws_route_table_association" "private-subnet-association" {
  subnet_id      = aws_subnet.subnet[1].id
  route_table_id = aws_route_table.private-route-table.id
}

