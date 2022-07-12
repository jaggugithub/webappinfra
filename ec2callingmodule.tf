module "ec2_calling_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/ec2?ref=main"


  instance_count = var.instancecount
  ami_id         = data.aws_ami.ubuntu.id
  instancetype   = var.typeofinstance
  environment    = var.ENV
  servername     = var.instance_Name
  keyname        = var.keyname
  publickey      = var.PublicKey

}
