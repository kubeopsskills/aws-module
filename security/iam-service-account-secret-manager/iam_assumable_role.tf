module "iam_assumable_role" {
  source           = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version          = "4.3.0"
  create_role      = var.enabled_role
  role_name        = var.role_name
  tags             = var.tags
  provider_url     = replace(var.cluster_oidc_issuer_url, "https://", "")
  role_policy_arns = var.enabled_additional_policy ? [aws_iam_policy.secret_manager.arn, aws_iam_policy.additional_policy[count.index].arn] : [aws_iam_policy.secret_manager.arn]

  oidc_fully_qualified_subjects = ["system:serviceaccount:${var.namespace}:${var.service_account_name}"]
  depends_on                    = [kubernetes_service_account.service_account]
}