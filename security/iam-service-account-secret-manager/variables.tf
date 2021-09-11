# Policy
variable "policy_name" {
  type        = string
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = true
}

variable "policy_description" {
  type        = string
  description = "(Optional, Forces new resource) Description of the IAM policy."
}

variable "kms_arn_id" {
  type        = string
  description = "KMS ARN ID"
}

variable "secret_manager_arn_id" {
  type        = string
  description = "Secret Manager ARN ID"
}

# Additional Policy
variable "additional_policy_name" {
  type        = string
  description = "Secret Manager ARN ID"
}

variable "additional_policy_description" {
  type        = string
  description = "(Optional, Forces new resource) Description of the IAM policy."
}

variable "enabled_additional_policy" {
  type        = bool
  description = "Enabled Additional Policy"
  default     = false
}

variable "additional_policy" {
  type        = string
  description = "Additional Policy"
}

# Role
variable "enabled_role" {
  type        = bool
  description = "Enabled role"
  default     = true
}

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