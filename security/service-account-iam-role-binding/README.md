## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_service_account.service_account](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_service_accounts"></a> [service\_accounts](#input\_service\_accounts) | Service Accounts | <pre>list(object({<br>    service_account_name = string<br>    namespace            = string<br>    account_id           = string<br>    role_name            = string<br>    labels               = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_account_namespaces"></a> [service\_account\_namespaces](#output\_service\_account\_namespaces) | Map of service accounts and their namespaces |
