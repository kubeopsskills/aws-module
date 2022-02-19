## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_assumable_role_multiple_oidc"></a> [iam\_assumable\_role\_multiple\_oidc](#module\_iam\_assumable\_role\_multiple\_oidc) | terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks | 4.13.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled_role"></a> [enabled\_role](#input\_enabled\_role) | Enabled role | `bool` | `true` | no |
| <a name="input_oidc_providers"></a> [oidc\_providers](#input\_oidc\_providers) | Map of OIDC providers where each provdier map should contain the provider, provider\_arns, and namespace\_service\_accounts | `any` | `{}` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the role to create | `string` | n/a | yes |
| <a name="input_role_policy_arns"></a> [role\_policy\_arns](#input\_role\_policy\_arns) | A list of role policy ARNs | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of role tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | IAM Role ARN |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | IAM Role Name |
