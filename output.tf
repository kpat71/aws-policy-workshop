# outputs

# ec2 instance public IP
output "public_ip" {
  description = "List of public DNS names assigned to the instances"
  value       = module.ec2.public_ip
}

# s3
output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = element(concat(aws_s3_bucket_policy.this.*.id, aws_s3_bucket.this.*.id, list("")), 0)
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = element(concat(aws_s3_bucket.this.*.arn, list("")), 0)
}

s3-bucket