resource "aws_route_table_association" "webapp_rtassociate_subnet" {
  subnet_id      = var.rtsub_id
  route_table_id = var.rtsubassociate_id
}