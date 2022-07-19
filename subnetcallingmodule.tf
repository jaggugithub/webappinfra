module "publicsubnet_webapp" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/subnet?ref=main"

  vpcid       = module.webapp_vpc.vpc_id
  subnet_cidr = var.publicsubnet_cidrblock
  subnet_name = var.publicsubnetname

}

module "privatesubnet_webapp" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/subnet?ref=main"

  vpcid       = module.webapp_vpc.vpc_id
  subnet_cidr = var.privatesubnet_cidrblock
  subnet_name = var.privatesubnetname

}