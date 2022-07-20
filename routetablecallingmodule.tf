module "routetable_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/routingtable?ref=main"

  vpc_rt     = module.webapp_vpc.vpc_id
  rt_cidr    = var.rtcidr
  ig_gateway = module.webapp_ig.internet_gateway
  rt_name    = var.routetablename

}

module "rt_subnet_association" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/routingtable?ref=main"
  
  rtsub_id = module.publicsubnet_webapp.subnet_id
  rtassociate_id = module.routetable_module.routetable_id
}

module "rt_ig_association" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/routingtable?ref=main"
  
  rtig_id = module.webapp_ig.internet_gateway
  rtassociate_id = module.routetable_module.routetable_id
}