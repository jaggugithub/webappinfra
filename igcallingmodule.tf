module "webapp_ig" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/internetgateway?ref=main"

  IG_VPC  = module.webapp_vpc.vpc_id
  IG_name = var.igname

}

module "webapp_nat" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/internetgateway?ref=main"

  nat_sub_id  = module.privatesubnet_webapp.privatesubnet_id
  NAT_name = var.natname

}
