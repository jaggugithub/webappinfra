module "routetable_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/routingtable?ref=main"

  vpc_rt     = module.webapp_vpc.vpc_id
  rt_cidr    = var.rtcidr
  ig_gateway = module.webapp_ig.internet_gateway
  rt_name    = var.routetablename

}