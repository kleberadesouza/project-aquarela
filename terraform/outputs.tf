output "cluster_name" {
  description = "Nome do cluster."
  value       = module.eks.cluster_name
}

output "configure_kubectl" {
  description = "Comando para configurar o kubectl para este cluster."
  value       = "aws eks --region ${var.region} update-kubeconfig --name ${module.eks.cluster_name}"
}

output "cluster_endpoint" {
  description = "Endpoint do cluster EKS"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID do cluster"
  value       = module.eks.cluster_security_group_id
}