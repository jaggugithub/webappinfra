module "SG_module" {
    source = "git::https://github.com/jaggugithub/webappinfra.git//modules/securitygroup?ref=main"

    name = var.SGName
    description = var.SGdescription
    vpcid = data.aws_vpc.vpcid.id
  
}