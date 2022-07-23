module "webapp_ig" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/internetgateway?ref=main"

  IG_VPC  = module.webapp_vpc.vpc_id
  IG_name = var.igname

}

module "webapp_nat_eip" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/elasticip?ref=main"

  eip_vpc = true

}

module "webapp_nat" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/natgateway?ref=main"

  nat_allocation_eip = module.webapp_nat_eip.eip_natgateway
  nat_sub_id  = module.publicsubnet_webapp.publicsubnet_id
  NAT_name = var.natname

}
