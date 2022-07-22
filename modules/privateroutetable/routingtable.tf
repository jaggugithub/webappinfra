resource "aws_route_table" "webapp_pri_rt" {
  vpc_id = "${var.vpc_prirt}"
  route {
    cidr_block = "${var.rt_pri_cidr}"
    gateway_id = "${var.nat_pri_gateway}"
  }
  tags = {
    Name = "${var.rt_pri_name}"
  }
}
resource "aws_route_table_association" "pri_webapp_rtassociate_subnet" {
  subnet_id      = "${var.pri_rtsub_id}"
  route_table_id = "${var.pri_rtassociate_id}"
}