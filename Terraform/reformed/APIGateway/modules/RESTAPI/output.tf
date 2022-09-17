#===================Output for fetching lambda function=====================#
output "output_lambda_function" {
  value       = data.aws_lambda_function.lambda_function
  sensitive   = false
  description = "Output for fetching lambda function"
}

#===================Output for creating API GATEWAY REST API=====================#
output "output_create_api" {
  value       = aws_api_gateway_rest_api.create_api
  sensitive   = false
  description = "Output for creating API GATEWAY REST API"
}

#===================Output for creating API GATEWAY resource=====================#
output "output_proxy" {
  value       = aws_api_gateway_resource.proxy
  sensitive   = false
  description = "Output for creating API GATEWAY resource"
}

#===================Output for creating API GATEWAY METHOD=====================#
output "output_get_method" {
  value       = aws_api_gateway_method.get_method
  sensitive   = false
  description = "Output for creating API GATEWAY METHOD"
}

#===================Output for creating API GATEWAY integration with lambda=====================#
output "output_lambda" {
  value       = aws_api_gateway_integration.lambda
  sensitive   = false
  description = "Output for creating API GATEWAY integration with lambda"
}

#===================Output for API Gateway REST API configuration snapshot=====================#
output "output_gateway_deployment" {
  value       = aws_api_gateway_deployment.gateway_deployment
  sensitive   = false
  description = "Output for API Gateway REST API configuration snapshot"
}

#===================Output for API Gateway Method for root=====================#
output "output_proxy_root" {
  value       = aws_api_gateway_method.proxy_root
  sensitive   = false
  description = "Output for API Gateway Method for root"
}

#===================Output for creating API GATEWAY integration with lambda root=====================#
output "output_lambda_root" {
  value       = aws_api_gateway_integration.lambda_root
  sensitive   = false
  description = "Output for creating API GATEWAY integration with lambda root"
}

#===================Output for API Gateway create environment stage=====================#
output "output_create_stage" {
  value       = aws_api_gateway_stage.create_stage
  sensitive   = false
  description = "Output for API Gateway create environment stag"
}