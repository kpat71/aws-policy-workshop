# https://github.com/terraform-aws-modules/terraform-aws-s3-bucket
module "aws_s3_bucket" {
  source            = "terraform-aws-modules/s3-bucket/aws"
  version           = "1.17.0"

  bucket            = "${var.tester_name}-${random_id.id.hex}"
  force_destroy     = true

  versioning = {
    enabled = false
  }

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  }  
}
/*
module "aws_s3_bucket2" {
  source            = "terraform-aws-modules/s3-bucket/aws"
  version           = "1.17.0"

  bucket            = "${var.tester_name}-${random_id.id.hex}-2"
  force_destroy     = true

  versioning = {
    enabled = false
  }

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  }  
}
*/