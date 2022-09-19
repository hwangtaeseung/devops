resource "aws_vpc" "skt-user03-vpc" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "172.35.0.0/16"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name = "skt-user03-vpc"
  }

  tags_all = {
    Name = "skt-user03-vpc"
  }
}
