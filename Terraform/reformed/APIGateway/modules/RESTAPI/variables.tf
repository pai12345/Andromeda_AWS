# function name
variable "function_name" {
  type        = string
  default     = "currentdats"
  description = "Function name"
}

# api name
variable "api_name" {
  type        = string
  default     = "testapi"
  description = "API name"
}

# resource path
variable "resource_path" {
  type        = string
  default     = "{test+}"
  description = "Resource path"
}

# http method type
variable "http_method_type" {
  type        = string
  default     = "GET"
  description = "http_method type"
}

# lambda integration type
variable "lambda_integration_type" {
  type        = string
  default     = "AWS_PROXY"
  description = "Lambda integration type"
}

# integration http_method type
variable "integration_http_method" {
  type        = string
  default     = "POST"
  description = "Integration http_method type"
}