variable "vpc_cidr" {
  type = string
}

variable "subnets_cidr" {
  type = list(string)
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "all_cidr_block" {
  type        = string
  description = "this is a cidr block variable for all ips"
}

variable "names" {
  type = map(any)
  default = {
    "public_instance" : "public_nginx_instance",
    "private_instance" : "private_apache2_instance",
    "vpc" : "my_vpc",
    "private_route_table" : "private_route_table",
    "public_route_table" : "public_route_table",
    "nat_gateway" : "my_nat_gateway",
    "internet_gateway" : "my_internet_gateway",
    "region" : "us-east-1"

  }
}

variable "availibilty_zones" {
  type = list(string)
  default = ["us-east-1a","us-east-1b"]
}