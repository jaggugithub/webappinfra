module "publicsubnet_webapp" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/subnet?ref=main"

  pubvpcid          = module.webapp_vpc.vpc_id
  publicsubnet_cidr = var.publicsubnet_cidrblock
  publicsubnet_name = var.publicsubnetname

}

module "privatesubnet_webapp" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/subnet?ref=main"

  privpcid           = module.webapp_vpc.vpc_id
  privatesubnet_cidr = var.privatesubnet_cidrblock
  privatesubnet_name = var.privatesubnetname

}