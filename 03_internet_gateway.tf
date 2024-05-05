
resource "aws_internet_gateway" "IGLab" {
  vpc_id = aws_vpc.VPCLab.id
  tags = {
    Name = "Internet Gateway Lab"
    Customer = "ABC Enterprise"
    Environment = "Laboratory"
    CreatedBy = "Elmer Marquez"
  }
}