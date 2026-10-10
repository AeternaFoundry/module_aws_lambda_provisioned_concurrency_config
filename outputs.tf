output "lambda_provisioned_concurrency_configs_id" {
  description = "Map of id values across all lambda_provisioned_concurrency_configs, keyed the same as var.lambda_provisioned_concurrency_configs"
  value       = { for k, v in aws_lambda_provisioned_concurrency_config.lambda_provisioned_concurrency_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_provisioned_concurrency_configs_function_name" {
  description = "Map of function_name values across all lambda_provisioned_concurrency_configs, keyed the same as var.lambda_provisioned_concurrency_configs"
  value       = { for k, v in aws_lambda_provisioned_concurrency_config.lambda_provisioned_concurrency_configs : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "lambda_provisioned_concurrency_configs_provisioned_concurrent_executions" {
  description = "Map of provisioned_concurrent_executions values across all lambda_provisioned_concurrency_configs, keyed the same as var.lambda_provisioned_concurrency_configs"
  value       = { for k, v in aws_lambda_provisioned_concurrency_config.lambda_provisioned_concurrency_configs : k => v.provisioned_concurrent_executions if v.provisioned_concurrent_executions != null }
}
output "lambda_provisioned_concurrency_configs_qualifier" {
  description = "Map of qualifier values across all lambda_provisioned_concurrency_configs, keyed the same as var.lambda_provisioned_concurrency_configs"
  value       = { for k, v in aws_lambda_provisioned_concurrency_config.lambda_provisioned_concurrency_configs : k => v.qualifier if v.qualifier != null && length(v.qualifier) > 0 }
}
output "lambda_provisioned_concurrency_configs_region" {
  description = "Map of region values across all lambda_provisioned_concurrency_configs, keyed the same as var.lambda_provisioned_concurrency_configs"
  value       = { for k, v in aws_lambda_provisioned_concurrency_config.lambda_provisioned_concurrency_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lambda_provisioned_concurrency_configs_skip_destroy" {
  description = "Map of skip_destroy values across all lambda_provisioned_concurrency_configs, keyed the same as var.lambda_provisioned_concurrency_configs"
  value       = { for k, v in aws_lambda_provisioned_concurrency_config.lambda_provisioned_concurrency_configs : k => v.skip_destroy if v.skip_destroy != null }
}

