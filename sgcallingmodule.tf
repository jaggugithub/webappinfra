module "SG_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/securitygroup?ref=main"

  vpc-id               = module.webapp_vpc.vpc_id
  name                 = var.SGName
  description          = var.SGdescription
  SG_Name              = var.sgname
  sg_ingress_cidrblock = module.publicsubnet_webapp.webapp_publicsubnet_cidr

}
