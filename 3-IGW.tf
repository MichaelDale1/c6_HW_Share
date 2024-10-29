resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.VPC-A-Virginia-Prod.id

  tags = {
    Name    = "VPC-A-Virginia-Prod_IG"
    Service = "Prod_IG"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}
