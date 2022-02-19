resource "kubernetes_service_account" "service_account" {
  for_each = toset(keys({ for i, r in var.service_accounts : i => r }))
  metadata {
    name      = var.service_accounts[each.value]["service_account_name"]
    namespace = var.service_accounts[each.value]["namespace"]
    annotations = {
      "eks.amazonaws.com/role-arn" = "arn:aws:iam::${var.service_accounts[each.value]["account_id"]}:role/${var.service_accounts[each.value]["role_name"]}"
    }
    labels = var.service_accounts[each.value]["labels"]
  }
}