# tf-module-gcp-secret-manager

## Providers

| Name | Version |
|------|---------|
| google-beta | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| project\_id | Project ID where the secrets are stored | `string` | n/a | yes |
| secrets | Map of the secrets to be created | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| secrets\_content | The actual value of the secret |