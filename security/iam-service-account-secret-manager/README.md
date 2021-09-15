## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.58.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.4.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_assumable_role"></a> [iam\_assumable\_role](#module\_iam\_assumable\_role) | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 4.3.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.additional_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.secret_manager](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [kubernetes_service_account.service_account](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | The AWS Account ID | `string` | n/a | yes |
| <a name="input_additional_policy"></a> [additional\_policy](#input\_additional\_policy) | (Required if enabled) Additional Policy | `any` | `null` | no |
| <a name="input_additional_policy_description"></a> [additional\_policy\_description](#input\_additional\_policy\_description) | (Optional) Description of the IAM policy. | `string` | `null` | no |
| <a name="input_additional_policy_name"></a> [additional\_policy\_name](#input\_additional\_policy\_name) | (Optional) The name of the additional policy. | `string` | `null` | no |
| <a name="input_cluster_oidc_issuer_url"></a> [cluster\_oidc\_issuer\_url](#input\_cluster\_oidc\_issuer\_url) | The URL of the cluster's OIDC issuer | `string` | n/a | yes |
| <a name="input_enabled_additional_policy"></a> [enabled\_additional\_policy](#input\_enabled\_additional\_policy) | (Optional) Enabled Additional Policy | `bool` | `false` | no |
| <a name="input_enabled_role"></a> [enabled\_role](#input\_enabled\_role) | Enabled role | `bool` | `true` | no |
| <a name="input_kms_arn_id"></a> [kms\_arn\_id](#input\_kms\_arn\_id) | KMS ARN ID | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | A list of labels to apply to the service account | `map(string)` | `{}` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to create the service account in | `string` | n/a | yes |
| <a name="input_policy_description"></a> [policy\_description](#input\_policy\_description) | (Optional, Forces new resource) Description of the IAM policy. | `string` | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | The name of the policy. | `string` | `true` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the role to create | `string` | n/a | yes |
| <a name="input_secret_manager_arn_id"></a> [secret\_manager\_arn\_id](#input\_secret\_manager\_arn\_id) | Secret Manager ARN ID | `string` | n/a | yes |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | The name of the service account to create | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of role tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_service_account_secret_name"></a> [default\_service\_account\_secret\_name](#output\_default\_service\_account\_secret\_name) | Default service account secret name |
| <a name="output_iam_additional_policy_arn"></a> [iam\_additional\_policy\_arn](#output\_iam\_additional\_policy\_arn) | IAM Additional Policy |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | IAM Role ARN |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | IAM Role Name |
| <a name="output_iam_secret_manager_policy_arn"></a> [iam\_secret\_manager\_policy\_arn](#output\_iam\_secret\_manager\_policy\_arn) | IAM Secret Manager Policy |
| <a name="output_service_account_name"></a> [service\_account\_name](#output\_service\_account\_name) | Service Account Name |
