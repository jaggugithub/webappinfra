output "pub_routetable_id" {
    value = aws_route_table.webapp_pub_rt.id
}

output "pri_routetable_id" {
    value = aws_route_table.webapp_pri_rt.id 
}