#Creation of VPC
resource "aws_vpc" "hauVPC" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = "HAUVPC"
  }
}

#Subnet configuration
resource "aws_subnet" "hauPublicSubnet1" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  cidr_block = var.subnet1_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = "HAUPublicSubnet1"
  }
}

#Network configuration
##Creating an internet gateway
resource "aws_internet_gateway" "hauIGW" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  tags = {
    Name = "hauIGW"
  }
}

##Creating Route Table
resource "aws_route_table" "hauPublicSubnetRT" {
  vpc_id = "${aws_vpc.hauVPC.id}"

  route {
    #associated subnet can reach everywhere
    cidr_block = "0.0.0.0/0"

    #CRT uses this IGW to reach the internet
    gateway_id = "${aws_internet_gateway.hauIGW.id}"
  }

  tags = {
    Name = "HAURouteTable"
  }
}

##Association of RT and public subnet
resource "aws_route_table_association" "hauPublicSubnet-RTAssociation" {
  subnet_id = "${aws_subnet.hauPublicSubnet1.id}"
  route_table_id = "${aws_route_table.hauPublicSubnetRT.id}"
}