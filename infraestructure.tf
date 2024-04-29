# Provider(AWS)
# ===============================================
provider "aws" {
  region = "us-east-1"
}

# Network(VPC)
# ===============================================
resource "aws_vpc" "VPCLab" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "VPC Lab"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

resource "aws_internet_gateway" "IGLab" {
  vpc_id = aws_vpc.VPCLab.id
  tags = {
    Name = "Internet Gateway Lab"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

# Network(Public Subnets)
# ===============================================
resource "aws_route_table" "PubRTLab" {
  vpc_id = aws_vpc.VPCLab.id
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGLab.id
  }
  tags = {
    Name = "Public Route Table 1"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

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

resource "aws_route_table_association" "PbSubnet_1_Association" {
  subnet_id = aws_subnet.PbSubnet_1.id
  route_table_id = aws_route_table.PubRTLab.id
}

resource "aws_route_table_association" "PbSubnet_2_Association" {
  subnet_id = aws_subnet.PbSubnet_2.id
  route_table_id = aws_route_table.PubRTLab.id
}

# Network(Private Subnets)
# ===============================================

