resource "aws_vpc" "webapp_vpc" {
  
  cidr_block = var.vpc_cidrblock
  tags = {
    Name = var.vpc_Name
  }
}
