
# Public 
# ==============================================================

resource "aws_route_table_association" "PbSubnet_1_Association" {
  subnet_id = aws_subnet.PbSubnet_1.id
  route_table_id = aws_route_table.PubRTLab.id
}

resource "aws_route_table_association" "PbSubnet_2_Association" {
  subnet_id = aws_subnet.PbSubnet_2.id
  route_table_id = aws_route_table.PubRTLab.id
}



# Private 
# ==============================================================

resource "aws_route_table_association" "PvSubnet_1_Association" {
  subnet_id = aws_subnet.PvSubnet_1.id
  route_table_id = aws_route_table.PrivRTLab_1.id
}

resource "aws_route_table_association" "PvSubnet_2_Association" {
  subnet_id = aws_subnet.PvSubnet_2.id
  route_table_id = aws_route_table.PrivRTLab_2.id
}

resource "aws_route_table_association" "PvSubnet_3_Association" {
  subnet_id = aws_subnet.PvSubnet_3.id
  route_table_id = aws_route_table.PrivRTLab_3.id
}