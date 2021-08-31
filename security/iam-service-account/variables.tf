# Settings
variable "enabled_role" {
  type        = bool
  description = "Enabled role"
  default     = true
}

# Role
variable "account_id" {
  type        = string
  description = "The AWS Account ID"
}

variable "cluster_oidc_issuer_url" {
  type        = string
  description = "The URL of the cluster's OIDC issuer"
}

variable "role_name" {
  type        = string
  description = "The name of the role to create"
}

variable "role_policy_arns" {
  type        = list(string)
  description = "A list of role policy ARNs"
}

variable "tags" {
  type        = map(string)
  description = "A list of role tags"
  default     = {}
}

# Service Account
variable "namespace" {
  type        = string
  description = "The namespace to create the service account in"
}

variable "service_account_name" {
  type        = string
  description = "The name of the service account to create"
}

variable "labels" {
  type        = map(string)
  description = "A list of labels to apply to the service account"
  default     = {}
}