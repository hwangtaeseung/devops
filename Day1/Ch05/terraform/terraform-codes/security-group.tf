
resource "aws_security_group" "skt-user03-sg-eks-cluster" {
  name        = "skt-user03-sg-eks-cluster"
  description = "security_group for skt-user03-eks-cluster"
  vpc_id      = aws_vpc.skt-user03-vpc.id

  tags = {
    Name = "skt-user03-sg-eks-cluster"
  }
}

resource "aws_security_group_rule" "skt-user03-sg-eks-cluster-ingress" {

  security_group_id = aws_security_group.skt-user03-sg-eks-cluster.id
  type              = "ingress"
  description       = "ingress security_group_rule for skt-user03-eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "skt-user03-sg-eks-cluster-egress" {

  security_group_id = aws_security_group.skt-user03-sg-eks-cluster.id
  type              = "egress"
  description       = "egress security_group_rule for skt-user03-eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
