variable "api_version" {
    type = string
    description = "EKSCTL API version"
}

variable "name" {
    type = string
    description = "Kubernetes Cluster Name"
}

variable "region" {
    type = string
    description = "Kubernetes Cluster Region"
}

variable "version" {
    type = string
    description = "Kubernetes Cluster Version"
}

variable "tags" {
    type = map(string)
    description = "List of tags"
}

variable "spec" {
    type = string
    description = "EKSCTL Spec"
}