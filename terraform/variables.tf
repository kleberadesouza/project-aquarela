# região daAWS onde os recursos serão provisionados
variable "region" {
  type        = string
  description = "Região AWS onde os recursos serão provisionados"
  default     = "us-west-1"
}

# Nome do cluster ekss
variable "cluster_name" {
  type        = string
  description = "Nome do cluster EKS"
  default     = "aquarela-cluster-kleber"
}

# Versao do k8s para o cluster EKS
variable "k8s_version" {
  type        = string
  description = "Versão do Kubernetes para o cluster EKS"
  default     = "1.33"
}

# arn do usuário IAM que será admin do cluster EKS
variable "admin_user_arn" {
  type        = string
  description = "ARN do usuário IAM que terá permissão de admin no cluster EKS"
  default     = "arn:aws:iam::833565098889:user/desafio_aquarela"
}

#blocos da vpc
variable "vpc_cidr" {
  type        = string
  description = "CIDR da VPC"
  default     = "10.0.0.0/16"
}

# AZ disponibilidades
variable "availability_zones" {
  type        = list(string)
  description = "Lista de zonas de disponibilidade"
  default     = ["us-west-1a", "us-west-1b"]
}

#sub prv
variable "private_subnets" {
  type        = list(string)
  description = "Lista de subnets privadas"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

#sub pub
variable "public_subnets" {
  type        = list(string)
  description = "Lista de subnets públicas"
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}
