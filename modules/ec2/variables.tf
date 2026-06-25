variable "environment" {
  type        = string
  description = "Nom de l'environnement (dev ou prod)"
}

variable "vpc_cidr" {
  type        = string
  description = "Le bloc CIDR du VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "Le bloc CIDR du Subnet public"
}

variable "instance_type" {
  type        = string
  description = "Le type d'instance EC2"
}