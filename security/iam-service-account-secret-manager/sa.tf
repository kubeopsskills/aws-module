resource "kubernetes_service_account" "service_account" {
  metadata {
    name      = var.service_account_name
    namespace = var.namespace
    annotations = {
      "eks.amazonaws.com/role-arn" = "arn:aws:iam::${var.account_id}:role/${var.role_name}"
    }
    labels = var.labels
  }
}