# fetch lambda function
data "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
}

# create api type rest
resource "aws_api_gateway_rest_api" "create_api" {
  name        = var.api_name
  description = "Test api resource"
}

# create api resource
resource "aws_api_gateway_resource" "proxy" {
  rest_api_id = aws_api_gateway_rest_api.create_api.id
  parent_id   = aws_api_gateway_rest_api.create_api.root_resource_id
  path_part   = var.resource_path
}

# create gateway method
resource "aws_api_gateway_method" "get_method" {
  rest_api_id   = aws_api_gateway_rest_api.create_api.id
  resource_id   = aws_api_gateway_resource.proxy.id
  http_method   = var.http_method_type
  authorization = "NONE"
}

# create integration with aws lambda
resource "aws_api_gateway_integration" "lambda" {
  rest_api_id             = aws_api_gateway_rest_api.create_api.id
  resource_id             = aws_api_gateway_resource.proxy.id
  http_method             = aws_api_gateway_method.get_method.http_method
  type                    = var.lambda_integration_type
  integration_http_method = var.integration_http_method
  uri                     = data.aws_lambda_function.lambda_function.invoke_arn
}


resource "aws_api_gateway_stage" "create_stage" {
  deployment_id = aws_api_gateway_deployment.gateway_deployment.id
  rest_api_id   = aws_api_gateway_rest_api.create_api.id
  stage_name    = var.staging_env
}

#======root========#
resource "aws_api_gateway_method" "proxy_root" {
  rest_api_id   = aws_api_gateway_rest_api.create_api.id
  resource_id   = aws_api_gateway_rest_api.create_api.root_resource_id
  http_method   = "ANY"
  authorization = "NONE"
}

#======root========#
resource "aws_api_gateway_integration" "lambda_root" {
  rest_api_id             = aws_api_gateway_rest_api.create_api.id
  resource_id             = aws_api_gateway_method.proxy_root.resource_id
  http_method             = aws_api_gateway_method.proxy_root.http_method
  integration_http_method = "ANY"
  type                    = "MOCK"
  request_templates = {
    "application/json" : "{ \"statusCode\": 301 }"
  }
}

# api gateway deployment
resource "aws_api_gateway_deployment" "gateway_deployment" {
  rest_api_id = aws_api_gateway_rest_api.create_api.id
  description = "API Gateway REST API configuration snapshot"
  triggers = {
    redeployment = sha1(jsonencode(aws_api_gateway_rest_api.create_api.body))
  }

  lifecycle {
    create_before_destroy = true
  }
  depends_on = [
    aws_api_gateway_integration.lambda,
    aws_api_gateway_integration.lambda_root
  ]
}