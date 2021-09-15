resource "aws_iam_policy" "additional_policy" {
  name        = var.additional_policy_name
  description = var.additional_policy_description
  count       = var.enabled_additional_policy ? 1 : 0
  policy      = var.additional_policy
}