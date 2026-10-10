variable "lambda_provisioned_concurrency_configs" {
  description = <<EOT
Map of lambda_provisioned_concurrency_configs, attributes below
Required:
    - function_name
    - provisioned_concurrent_executions
    - qualifier
Optional:
    - region
    - skip_destroy
EOT

  type = map(object({
    function_name                     = string
    provisioned_concurrent_executions = number
    qualifier                         = string
    region                            = optional(string)
    skip_destroy                      = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.lambda_provisioned_concurrency_configs : (
        v.provisioned_concurrent_executions >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

