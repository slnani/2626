resource "aws_instance" "web01" {
ami		= "ami-0557a15b87f6559cf"
instace_type    = "t2.micro"
}
