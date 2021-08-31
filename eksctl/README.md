## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_eksctl"></a> [eksctl](#requirement\_eksctl) | ~>0.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_eksctl"></a> [eksctl](#provider\_eksctl) | 0.16.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [eksctl_cluster.eksctl_cluster](https://registry.terraform.io/providers/mumoshu/eksctl/latest/docs/resources/cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_version"></a> [api\_version](#input\_api\_version) | EKSCTL API version | `string` | n/a | yes |
| <a name="input_eksctl_bin"></a> [eksctl\_bin](#input\_eksctl\_bin) | eksctl binary | `string` | `"/usr/local/bin/eksctl"` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | Kubernetes Cluster Version | `string` | n/a | yes |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Path to kubeconfig | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Kubernetes Cluster Name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Kubernetes Cluster Region | `string` | n/a | yes |
| <a name="input_resource_depends_on"></a> [resource\_depends\_on](#input\_resource\_depends\_on) | Resource Dependencies | `any` | n/a | yes |
| <a name="input_spec"></a> [spec](#input\_spec) | EKSCTL Spec | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

No outputs.
