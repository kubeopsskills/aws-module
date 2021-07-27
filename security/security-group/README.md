## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.51.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Security group description. | `string` | n/a | yes |
| <a name="input_egresses"></a> [egresses](#input\_egresses) | Egress Rules | <pre>list(object({<br>    description = string,<br>    from_port = number,<br>    to_port = number,<br>    protocol = string,<br>    security_groups = list(string),<br>    cidr_blocks = list(string),<br>    ipv6_cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_ingresses"></a> [ingresses](#input\_ingresses) | Ingress Rules | <pre>list(object({<br>    description = string,<br>    from_port = number,<br>    to_port = number,<br>    protocol = string,<br>    security_groups = list(string),<br>    cidr_blocks = list(string),<br>    ipv6_cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the security group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | Security Group ID |
