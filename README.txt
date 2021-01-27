# pre requiremnt 
    - git client installed 
    - ssh client available
    - public SSH key created
    - terraform installed

# usefull tools installed 
    - AWS cli tools 

1. clone repository
git clone git@github.com:kpat71/aws-policy-workshop.git

2. configure terraform.tfvars
    - check public subnet and vpcid from account

3. export aws keys
    - check access
    aws s3 ls

4. create instance (check terraform outputs)
    terraform apply 

5. copy objects to bucket
    aws s3 cp --recursive bucket_objects s3://BUCKET_ID

6. SSH to instance 
    ssh ec2-user@INSTANCE_IP
check metadata https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instancedata-data-retrieval.html
    curl -s http://169.254.169.254/latest/meta-data/identity-credentials/ec2/info

From instance test s3 access
aws s3 ls
aws s3 ls s3://BUCKET_ID

7. Test S3 policy changes
    Edit S3 permissions so that you can read only bucket content
    Edit policy so that you can read only dir1 content
    Add permissions so that you can raed from dir1 and do all actions to dir2
    Test to upload files to dir1 and dir to verify that rule is working
    change permission so that there is condission to read bucket that are tagged to var.tester_name

8. Test Parameter store policy changes
    Add permission to read app1 perameters from parameter store
    change permission so that you can read all parameters under you var.tester_name


Delete installation:
1. remove all files from s3 bucket
    aws s3 rm --recursive s3://BUCKET_ID/
2. Run terraform to destroy resources
    terraform destroy

Links:
https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_examples.html
https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_examples_iam-assume-tagged-role.html