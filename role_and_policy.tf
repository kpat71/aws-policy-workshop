# IAM role and policy

resource "aws_iam_instance_profile" "profile" {
  name = "${var.tester_name}-${random_id.id.hex}-profile"
  role = aws_iam_role.role.name
}

# create role and give instance permission to assume this role 
resource "aws_iam_role" "role" {
  name = "${var.tester_name}-${random_id.id.hex}-role"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

# https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html

# create S3 policy 
resource "aws_iam_policy" "policy" {
  name        = "${var.tester_name}-${random_id.id.hex}-policy"
  path        = "/"
  description = "S3 policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "ListObjectsInBucket",
            "Effect": "Allow",
            "Action": ["s3:ListBucket"],
            "Resource": ["${module.aws_s3_bucket.this_s3_bucket_arn}"]
        },
        {
            "Sid": "AllObjectActions",
            "Effect": "Allow",
            "Action": "s3:*Object",
            "Resource": ["${module.aws_s3_bucket.this_s3_bucket_arn}/*"]
        }
    ]
}
EOF
}
# attach policy to role
resource "aws_iam_policy_attachment" "s3_policy" {
  name       = "test-attachment"
  roles      = [aws_iam_role.role.name]
  policy_arn = aws_iam_policy.policy.arn
}