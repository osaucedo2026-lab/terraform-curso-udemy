virginia_cidr = "10.10.0.0/16"


/* public_subnet="10.10.0.0/24" 
private_subnet="10.10.1.0/24"  */
list_subnet = ["10.10.0.0/24", "10.10.1.0/24"]
tags_project_genericos = {
  "name"        = "prueba"
  "env"         = "Dev"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.16.2"
  "project"     = "cerberus"
  "region"      = "virginia"
}
sg_ingress_cidr = "0.0.0.0/0"

ec2_specs = {
  "ami"           = "ami-0e34b50e714a297f1"
  "instance_type" = "t3.micro"
}

enable_monitoring = 0
ingress_port_list = [22, 80, 443]
