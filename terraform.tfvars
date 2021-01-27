# put here your username example user1
tester_name = "xxxxxxx"

# instance VPC id (Check from AWS) 
vpc_id = "vpc-xxxxxxxxxxxxxxxxx"

# instance VPC id (Check from AWS) 
subnet = "subnet-xxxxxxxxxxxxxxxxx"

# set true to get public IP to instance (default false)
associate_public_ip_address = true

# put your public SSH key here to login instance
public_ssh_key = "ssh-rsa AAAAB3NzXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# IP address in CIDR format. Check  IP from http://ipinfo.io/ip (default 127.0.0.1/32)
own_ip = ["127.0.0.1/32"]

# environment variable
environment = "dev"

# region variable
region = "eu-central-1"

# default ami_id is ami-03c3a7e4263fd998c and that is available in eu-central-1 (Frankfurth region)
ami_id = "ami-03c3a7e4263fd998c"

# instance type that will be started (default t3.nano)
instance_type = "t3.nano"