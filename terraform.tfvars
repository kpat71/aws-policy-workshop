# put here your username example user1
tester_name = "xxxxxxx"

# instance VPC id (Check from AWS) 
subnet = ["subnet-xxxxxxxxxxxxxxxxx"]

# instance subnet id (Check from AWS and use public subnet to get public IP) 
subnet = ["subnet-xxxxxxxxxxxxxxxxx"]

# set true to get public IP to instance (default false)
associate_public_ip_address = true

# put your public SSH key here to login instance
public_ssh_key = "ssh-rsa AAAAB3NzXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# IP address in CIDR format. Check  IP from http://ipinfo.io/ip (default 127.0.0.1/32)
own_ip = "127.0.0.1/32"

# environment variable
environment = "dev"

# region variable
region = "eu-central-1"
