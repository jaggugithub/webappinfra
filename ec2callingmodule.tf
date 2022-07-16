module "ec2_calling_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/ec2?ref=main"


  instance_count = var.instancecount
  ami_id         = data.aws_ami.ubuntu.id
  instancetype   = var.typeofinstance
  environment    = var.ENV
  servername     = var.instance_Name
  key = module.key_pair.key_name
  SG = module.SG_module.security_group_id


}
