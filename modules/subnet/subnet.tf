resource "aws_subnet" "webapp_publicsubnet" {
  vpc_id     = var.pubvpcid
  cidr_block = var.publicsubnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.publicsubnet_name
  }
}

resource "aws_subnet" "webapp_privatesubnet" {
  vpc_id     = var.privpcid
  cidr_block = var.privatesubnet_cidr
  map_public_ip_on_launch = false

  tags = {
    Name = var.privatesubnet_name
  }
}