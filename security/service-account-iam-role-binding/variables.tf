variable "service_accounts" {
  description = "Service Accounts"
  type = list(object({
    service_account_name = string
    namespace            = string
    account_id           = string
    role_name            = string
    labels               = map(string)
  }))
}