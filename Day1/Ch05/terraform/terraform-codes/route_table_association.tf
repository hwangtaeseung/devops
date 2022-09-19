resource "aws_route_table_association" "skt-user03-route-association-pub-sub1" {
  route_table_id = aws_route_table.skt-user03-route-table-pub-sub1.id
  subnet_id      = aws_subnet.skt-user03-public-subnet1.id
}

resource "aws_route_table_association" "skt-user03-route-association-pub-sub3" {
  route_table_id = aws_route_table.skt-user03-route-table-pub-sub3.id
  subnet_id      = aws_subnet.skt-user03-public-subnet3.id
}