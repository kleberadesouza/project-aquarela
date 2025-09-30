output "cluster_name" {
  description = "Nome do cluster."
  value       = module.eks.cluster_name
}

output "configure_kubectl" {
  description = "Comando para configurar o kubectl para este cluster."
  value       = "aws eks --region ${var.region} update-kubeconfig --name ${module.eks.cluster_name}"
}
