# outputs

# ec2 instance public IP
output "public_ip" {
  description = "List of public DNS names assigned to the instances"
  value       = module.ec2.public_ip
}

# s3
output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.aws_s3_bucket.this_s3_bucket_id
}
