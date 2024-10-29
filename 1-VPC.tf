# this  makes  vpc.id which is aws_vpc.VPC-A-Virginia-Prod.id
resource "aws_vpc" "VPC-A-Virginia-Prod" {
  cidr_block = "10.213.0.0/16"

  tags = {
    Name = "VPC-A-Virginia-Prod"
    Service = "Prod"
    Owner = "Mighty"
    Planet = "Maximus"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "VPC-B-Virginia-Dev" {
  cidr_block = "10.212.0.0/16"

  tags = {
    Name = "VPC-B-Virginia-Dev"
    Service = "Dev"
    Owner = "Mighty"
    Planet = "Maximus"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "VPC-C-Virginia-Test" {
  cidr_block = "10.211.0.0/16"

  tags = {
    Name = "VPC-C-Virginia-Test"
    Service = "Test"
    Owner = "Mighty"
    Planet = "Maximus"
  }
}