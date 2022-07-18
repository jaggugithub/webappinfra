module "subnet_webapp" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/subnet?ref=main"

  vpcid       = module.webapp_vpc.vpc_id
  subnet_cidr = var.subnet_cidrblock
  subnet_name = var.subnetname

}