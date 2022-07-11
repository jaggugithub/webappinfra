variable "typeofinstance" {
  type    = string
  default = "t2.micro"
}

variable "instancecount" {
  type    = number
  default = "2"
}

variable "AWS_REGION" {
  type    = string
  default = "eu-west-2"
}

variable "AWS_PROFILE" {
  type    = string
  default = "training"
}

variable "ENV" {
  type    = string
  default = "Development"
}

variable "instance_Name" {
  description = "Names Of the EC2 Instances"
  type        = list(string)
  default     = ["JenkinsServer", "DockerServer"]
}