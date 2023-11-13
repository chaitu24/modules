resource "aws_instance" "web" {
  ami           = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"
  vpc_security_group_ids = "${module.sg.security_group_id}"
  tags = {
    Name = var.name_ec2
  }
}