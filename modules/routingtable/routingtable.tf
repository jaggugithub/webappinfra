resource "aws_route_table" "webapp_rt" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = var.rt_cidr   #"0.0.0.0/0"
    gateway_id = var.ig_gateway
  }

  tags = {
    Name = var.rt_name
  }
}