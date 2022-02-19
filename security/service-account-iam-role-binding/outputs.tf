output "service_account_namespaces" {
  description = "Map of service accounts and their namespaces"
  value = [for k, v in var.service_accounts :
    {
      service_account_name = "${var.service_accounts[k]["service_account_name"]}"
      namespace            = "${var.service_accounts[k]["namespace"]}"
    }
  ]
}