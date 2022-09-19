resource "aws_subnet" "skt-user03-public-subnet1" {

  depends_on = [
    aws_vpc.skt-user03-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.35.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "skt-user03-public-subnet1"
    "kubernetes.io/cluster/skt-user03-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "skt-user03-public-subnet1"
    "kubernetes.io/cluster/skt-user03-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.skt-user03-vpc.id
  availability_zone = "ap-southeast-1a"
}

resource "aws_subnet" "skt-user03-public-subnet3" {

  depends_on = [
    aws_vpc.skt-user03-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.35.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "skt-user03-public-subnet3"
    "kubernetes.io/cluster/skt-user03-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "skt-user03-public-subnet3"
    "kubernetes.io/cluster/skt-user03-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.skt-user03-vpc.id
  availability_zone = "ap-southeast-1c"
}