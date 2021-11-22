output "kubeconfig_path" {
  value       = eksctl_cluster.eksctl_cluster.kubeconfig_path
  description = "EKS Kube Config Path"
}