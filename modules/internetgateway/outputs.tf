output "internet_gateway" {
    value = aws_internet_gateway.webapp_IG.id
}

output "nat_gateway" {
    value = aws_nat_gateway.webapp_NAT.id
}