# Settings
variable "enabled_role" {
  type        = bool
  description = "Enabled role"
  default     = true
}

# Role
variable "role_name" {
  type        = string
  description = "The name of the role to create"
}

variable "role_policy_arns" {
  type        = list(string)
  description = "A list of role policy ARNs"
  default     = []
}

variable "oidc_providers" {
  type        = any
  description = "Map of OIDC providers where each provdier map should contain the provider, provider_arns, and namespace_service_accounts"
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A list of role tags"
  default     = {}
}