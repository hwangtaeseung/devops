resource "aws_internet_gateway" "skt-user03-internet-gateway" {

  depends_on = [
    aws_vpc.skt-user03-vpc
  ]

  vpc_id = aws_vpc.skt-user03-vpc.id
}
