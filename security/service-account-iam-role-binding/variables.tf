variable "account_id" {
  description = "AWS Account ID"
  type        = string
}

variable "role_name" {
  description = "Name of the role"
  type        = string
}

variable "service_accounts" {
  description = "Service Accounts"
  type = list(object({
    service_account_name = string
    namespace            = string
    labels               = map(string)
  }))
}