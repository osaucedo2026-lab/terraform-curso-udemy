variable "virginia_cidr" {
  description = "CIDR Virginia"
  type        = string
}
/* variable "public_subnet" {
  description = "CIDR Public Subnet"
  type        = string
}

variable "private_subnet" {
  description = "CIDR Private Subnet"
  type        = string
} */
variable "list_subnet" {
  description = "Lista de Subnets"
  type        = list(string)
}
variable "tags_project_genericos" {
  description = "Tags del proyecto"
  type        = map(string)

}

variable "sg_ingress_cidr" {
  description = "CIDR for ingreess traffic"
  type        = string
}

variable "ec2_specs" {
  description = "parametros de EC2 instance"
  type        = map(string)
}