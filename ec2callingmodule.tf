module "ec2_calling_module" {

  source = "git::ssh://jaggugithub@github.com/webappinfra.git//modules/ec2?ref=main"
  

  instance_count = var.instancecount
  ami_id         = data.aws_ami.ubuntu.id
  instancetype   = var.typeofinstance
  environment    = var.ENV
  servername     = var.instance_Name


}