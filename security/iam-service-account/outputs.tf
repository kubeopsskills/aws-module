output "iam_role_name" {
  description = "IAM Role Name"
  value       = module.iam_assumable_role.iam_role_name
}

output "iam_role_arn" {
  description = "IAM Role ARN"
  value       = module.iam_assumable_role.iam_role_arn
}

output "service_account_name" {
  description = "Service Account Name"
  value       = kubernetes_service_account.service_account.metadata[0].name
}

output "default_service_account_secret_name" {
  description = "Default service account secret name"
  value       = kubernetes_service_account.service_account.default_secret_name
}