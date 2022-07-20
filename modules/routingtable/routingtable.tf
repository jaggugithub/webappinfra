resource "aws_route_table" "webapp_rt" {
  vpc_id = var.vpc_rt

  route {
    cidr_block = var.rt_cidr
    gateway_id = var.ig_gateway
  }

  tags = {
    Name = var.rt_name
  }
}
