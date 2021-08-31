module "iam_assumable_role" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version                       = "4.3.0"
  create_role                   = true
  role_name                     = var.role_name
  tags                          = var.tags
  provider_url                  = replace(var.cluster_oidc_issuer_url, "https://", "")
  role_policy_arns              = var.role_policy_arns
  oidc_fully_qualified_subjects = ["system:serviceaccount:${var.namespace}:${var.service_account_name}"]
}

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