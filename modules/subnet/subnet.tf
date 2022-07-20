resource "aws_subnet" "webapp_subnet" {
  vpc_id     = var.vpcid
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name
  }
}