resource "aws_internet_gateway" "webapp_IG" {
  vpc_id = var.IG_VPC

  tags = {
    Name = var.IG_name
  }
}

resource "aws_nat_gateway" "webapp_NAT" {
  connectivity_type = "private"
  subnet_id         = var.nat_sub_id

    tags = {
    Name = var.NAT_name
  }
}
