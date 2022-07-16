resource "aws_security_group" "open_ssh" {
  name        = var.name
  description = var.description
  #vpc_id = var.vpcid

  ingress {
    description      = "Open SSH Port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "SSH"
  }
}