resource "aws_subnet" "webapp_subnet" {
  vpc_id     = var.vpcid
  cidr_block = var.subnet_cidr

  tags = {
    Name = var.subnet_name
  }
}