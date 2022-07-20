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

resource "aws_route_table_association" "webapp_rtassociate_subnet" {
  subnet_id      = var.rtsub_id   #aws_subnet.foo.id
  route_table_id = var.rtassociate_id #aws_route_table.bar.id
}

resource "aws_route_table_association" "webapp_rtassociate_ig" {
  gateway_id     =var.rtig_id   # aws_internet_gateway.foo.id
  route_table_id = var.rtassociate_id  #aws_route_table.bar.id
}