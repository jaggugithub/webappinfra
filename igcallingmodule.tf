module "webapp_ig" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/internetgateway?ref=main"

  IG_VPC  = module.webapp_vpc.vpc_id
  IG_name = var.igname

}
