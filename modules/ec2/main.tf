resource "aws_instance" "webapp" {

  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instancetype

  tags = {
    Name        = var.servername[count.index]
    Environment = var.environment
  }
}