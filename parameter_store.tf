# PS
resource "aws_ssm_parameter" "parameter_1" {
  name        = "/${var.environment}/${var.tester_name}/app1/parameter1"
  description = "The parameter description"
  type        = "SecureString"
  value       = "app1value1"

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  } 
}

resource "aws_ssm_parameter" "parameter_2" {
  name        = "/${var.environment}/${var.tester_name}/app1/parameter2"
  description = "The parameter description"
  type        = "SecureString"
  value       = "app1value2"

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  } 
}

resource "aws_ssm_parameter" "parameter_3" {
  name        = "/${var.environment}/${var.tester_name}/app2/parameter1"
  description = "The parameter description"
  type        = "SecureString"
  value       = "app2value1"

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  }  
}

resource "aws_ssm_parameter" "parameter_4" {
  name        = "/${var.environment}/${var.tester_name}/app2/parameter2"
  description = "The parameter description"
  type        = "SecureString"
  value       = "app2value2"

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  }
}