
# Network(Public Subnets)
# ===============================================


resource "aws_subnet" "PbSubnet_1" {
  vpc_id = aws_vpc.VPCLab.id
  cidr_block = "10.0.1.0/24"  
  availability_zone = "us-east-1a"
  tags = {
    Name = "Public Subnet 1"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

  resource "aws_subnet" "PbSubnet_2" {
  vpc_id = aws_vpc.VPCLab.id
  cidr_block = "10.0.2.0/24"  
  availability_zone = "us-east-1b"
  tags = {
    Name = "Public Subnet 2"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}



# Network(Private Subnets)
# ===============================================

resource "aws_subnet" "PvSubnet_1" {
  vpc_id = aws_vpc.VPCLab.id
  cidr_block = "10.0.3.0/24"  
  availability_zone = "us-east-1a"
  tags = {
    Name = "Private Subnet 1"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

resource "aws_subnet" "PvSubnet_2" {
  vpc_id = aws_vpc.VPCLab.id
  cidr_block = "10.0.4.0/24"  
  availability_zone = "us-east-1b"
  tags = {
    Name = "Private Subnet 2"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

resource "aws_subnet" "PvSubnet_3" {
  vpc_id = aws_vpc.VPCLab.id
  cidr_block = "10.0.5.0/24"  
  availability_zone = "us-east-1c"
  tags = {
    Name = "Private Subnet 3"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}