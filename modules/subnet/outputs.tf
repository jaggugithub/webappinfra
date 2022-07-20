output "subnet_id" {
    value = aws_subnet.webapp_subnet.id
}

output "webapp_subnet_cidr" {
    value = aws_subnet.webapp_subnet.cidr_block
}