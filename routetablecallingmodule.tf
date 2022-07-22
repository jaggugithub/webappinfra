module "pub_routetable_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/publicroutetable?ref=main"

  vpc_pubrt      = module.webapp_vpc.vpc_id
  rt_pub_cidr    = var.publicsubnet_cidrblock
  ig_pub_gateway = module.webapp_ig.internet_gateway
  rt_pub_name    = var.publicrtname

}

module "public_rt_subnet_association" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/publicroutetable?ref=main"

  pub_rtsub_id       = module.publicsubnet_webapp.publicsubnet_id
  pub_rtassociate_id = module.pub_routetable_module.pub_routetable_id
}

module "private_routetable_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/privateroutetable?ref=main"

  vpc_prirt       = module.webapp_vpc.vpc_id
  rt_pri_cidr     = var.privatesubnet_cidrblock
  nat_pri_gateway = module.webapp_nat.nat_gateway
  rt_pri_name     = var.privatertname

}

module "private_rt_subnet_association" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/privateroutetable?ref=main"

  pri_rtsub_id       = module.privatesubnet_webapp.privatesubnet_id
  pri_rtassociate_id = module.private_routetable_module.pri_routetable_id
}
