variable "api_version" {
  type        = string
  description = "EKSCTL API version"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "name" {
  type        = string
  description = "Kubernetes Cluster Name"
}

variable "region" {
  type        = string
  description = "Kubernetes Cluster Region"
}

variable "k8s_version" {
  type        = string
  description = "Kubernetes Cluster Version"
}

variable "tags" {
  type        = map(string)
  description = "List of tags"
}

variable "spec" {
  type        = string
  description = "EKSCTL Spec"
}

variable "eksctl_bin" {
  type        = string
  description = "eksctl binary"
  default     = "/usr/local/bin/eksctl"
}

variable "resource_depends_on" {
  type        = any
  description = "Resource Dependencies"
}