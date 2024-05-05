

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
  provider = aws.virginia
}











