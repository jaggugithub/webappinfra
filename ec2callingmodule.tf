module "ec2_calling_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/ec2?ref=main"

  instance_count  = var.instancecount
  ami_id          = data.aws_ami.ubuntu.id
  instancetype    = var.typeofinstance
  environment     = var.ENV
  servername      = var.instance_Name
  key             = module.key_pair.keyname
  publicsubnet_id = module.subnet_webapp.subnet_id
  sgid            = [module.SG_module.securitygroup_id]

}
