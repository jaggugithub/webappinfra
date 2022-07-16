module "SG_module" {
  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/securitygroup?ref=main"

  name        = var.SGName
  description = var.SGdescription
  vpcid       = module.default_vpc.default.id

}