resource "aws_route_table_association" "webapp_rtassociate_ig" {
  gateway_id     = var.rtig_id
  route_table_id = var.rtigassociate_id
}