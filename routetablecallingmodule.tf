module "routetable_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/routingtable?ref=main"

  rt_cidr = var.rtcidr
  ig_gateway = module.webapp_ig.internet_gateway
  rt_name = var.routetablename

}