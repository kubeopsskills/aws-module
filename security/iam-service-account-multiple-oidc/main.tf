module "iam_assumable_role_multiple_oidc" {
  source           = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version          = "4.13.1"
  create_role      = var.enabled_role
  role_name        = var.role_name
  role_policy_arns = var.role_policy_arns
  oidc_providers   = var.oidc_providers
  tags             = var.tags
}