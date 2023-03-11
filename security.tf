resource "aws_security_group" "laksg1" {
  name        = "laksg1"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.lakvpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.lakvpc.cidr_block]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name ="laksg1"
  }
}
