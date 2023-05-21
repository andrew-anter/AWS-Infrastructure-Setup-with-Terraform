# create a supnet within the vpc
# index 0 => public
# inxex 1 => private
resource "aws_subnet" "subnet" {
  count             = 2
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.subnets_cidr[count.index]
  availability_zone = var.availibilty_zones[count.index]

  tags = {
    Name : "subnet${count.index}"
  }
}