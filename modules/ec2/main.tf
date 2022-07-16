resource "aws_instance" "webapp" {

  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instancetype
  key_name      = aws_key_pair.webapp-key.key_name
  security_groups = aws_security_group.open_ssh.id

  tags = {
    Name        = var.servername[count.index]
    Environment = var.environment
  }
}
