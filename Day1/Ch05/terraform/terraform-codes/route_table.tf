
resource "aws_route_table" "skt-user03-route-table-pub-sub1" {

  depends_on = [
    aws_vpc.skt-user03-vpc,
    aws_internet_gateway.skt-user03-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.skt-user03-internet-gateway.id
  }

  tags = {
    Name = "skt-user03-route-table-pub-sub1"
  }

  tags_all = {
    Name = "skt-user03-route-table-pub-sub1"
  }

  vpc_id = aws_vpc.skt-user03-vpc.id
}

resource "aws_route_table" "skt-user03-route-table-pub-sub3" {

  depends_on = [
    aws_vpc.skt-user03-vpc,
    aws_internet_gateway.skt-user03-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.skt-user03-internet-gateway.id
  }

  tags = {
    Name = "skt-user03-route-table-pub-sub3"
  }

  tags_all = {
    Name = "skt-user03-route-table-pub-sub3"
  }

  vpc_id = aws_vpc.skt-user03-vpc.id
}
