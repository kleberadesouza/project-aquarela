# região da AWS onde os recursos serão provisionados
variable "region" {
  type        = string
  description = "Região AWS onde os recursos serão provisionados"
  default     = "us-east-1"
}

# Nome do cluster EKS
variable "cluster_name" {
  type        = string
  description = "Nome do cluster EKS"
  default     = "meu-cluster-eks-demo"
}

# Versao do k8s para o cluster EKS
variable "k8s_version" {
  type        = string
  description = "Versão do Kubernetes para o cluster EKS"
  default     = "1.28"
}

# arn do usuário IAM que será admin do cluster EKS
variable "admin_user_arn" {
  type        = string
  description = "ARN do usuário IAM que terá permissão de admin no cluster EKS"
  default     = "arn:aws:iam::123456789012:user/eks-admin-user"
}

# CIDR da VPC
variable "vpc_cidr" {
  type        = string
  description = "CIDR da VPC"
  default     = "10.1.0.0/16"
}

# AZ disponibilidades
variable "availability_zones" {
  type        = list(string)
  description = "Lista de zonas de disponibilidade"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# subnets privadas
variable "private_subnets" {
  type        = list(string)
  description = "Lista de subnets privadas"
  default     = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
}

# subnets públicas
variable "public_subnets" {
  type        = list(string)
  description = "Lista de subnets públicas"
  default     = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
}