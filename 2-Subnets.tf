#These are   for  public

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.VPC-A-Virginia-Prod.id
  cidr_block              = "10.213.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "PublicProd"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

/*
resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.212.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1b"
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}


resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.211.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1c"
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}
*/

#these are for private
resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.VPC-A-Virginia-Prod.id
  cidr_block        = "10.213.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "private-us-east-1a"
    Service = "PrivateProd"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.VPC-B-Virginia-Dev.id
  cidr_block        = "10.212.12.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "private-us-east-1b"
    Service = "PrivateDev"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}


resource "aws_subnet" "private-us-east-1c" {
  vpc_id            = aws_vpc.VPC-C-Virginia-Test.id
  cidr_block        = "10.211.13.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private-us-east-1c"
    Service = "PrivateTest"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}
