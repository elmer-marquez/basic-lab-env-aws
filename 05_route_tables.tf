
# Public Route Tables 
# =====================================================

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


# Private Route Tables 
# =====================================================

resource "aws_route_table" "PrivRTLab_1" {
  vpc_id = aws_vpc.VPCLab.id
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  tags = {
    Name = "Private Route Table 1"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

resource "aws_route_table" "PrivRTLab_2" {
  vpc_id = aws_vpc.VPCLab.id
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  tags = {
    Name = "Private Route Table 2"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}

resource "aws_route_table" "PrivRTLab_3" {
  vpc_id = aws_vpc.VPCLab.id
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  tags = {
    Name = "Private Route Table 3"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}