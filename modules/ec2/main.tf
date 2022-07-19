resource "aws_instance" "webapp" {

  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instancetype
  key_name               = var.key
  subnet_id              = var.publicsubnet_id
  vpc_security_group_ids = var.sgid

  tags = {
    Name        = var.servername[count.index]
    Environment = var.environment
  }
}
