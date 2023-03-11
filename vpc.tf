resource "aws_vpc" "lakvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
    tags = {
    Name = "lakvpc"
    Purpose = "jenkins"
  }
}
