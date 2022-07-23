resource "aws_route_table_association" "pub_webapp_rtassociate_subnet" {
  gateway_id      = var.pub_rtig_id
  route_table_id = var.pub_rtassociate_id
}