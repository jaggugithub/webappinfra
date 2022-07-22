resource "aws_route_table" "webapp_pub_rt" {
  vpc_id = "${var.vpc_pubrt}"
  route {
    cidr_block = "${var.rt_pub_cidr}"
    gateway_id = "${var.ig_pub_gateway}"
  }
  tags = {
    Name = "${var.rt_pub_name}"
  }
}
resource "aws_route_table_association" "pub_webapp_rtassociate_subnet" {
  subnet_id      = "${var.pub_rtsub_id}"
  route_table_id = "${var.pub_rtassociate_id}"
}