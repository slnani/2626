resource "aws_security_group" "sg" {
  name        = "sg1"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpc.id
   ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.vpc.cidr_block]
   }

  ]
