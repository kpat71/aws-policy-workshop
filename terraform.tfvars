# put here your username example user1
tester_name = "kpatovaa"

# instance VPC id (Check from AWS) 
vpc_id = "vpc-069b19fd2570b9cc9"

# instance VPC id (Check from AWS) 
subnet = "subnet-04455594374c07237"

# set true to get public IP to instance (default false)
associate_public_ip_address = true

# put your public SSH key here to login instance
public_ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxs4Dkst1Gs/1CbxUQ3am5NXEWdvjRlusixv3lL6FGCl5TjWFeCAy6+9varHe83LzNjPbyTCdCLyuRsjq+CQ7nGDBli8qizQ15p6kAzy5WYxFdlUUDgIAsUnF2CiGaX+WVS5J+3rNw4U9i1Jy/uIR8qO75F3vhXbCvBnYpKjvY4fTNMV7GkX1SUl5i2J40Wydt1PH8lje9RyQtOnFIOTcF5rITmsRCys2u7KNfLHa//Pe7GDfZKUW8kTmAWMOot9wcDkoY+TB303BnMAgjyRWZjST+ZeGjaWA3R1NftoWozvMNVvDNlIGif/TRB004qyQc1rqtArU8N8DWEaQWaWT/"

# IP address in CIDR format. Check  IP from http://ipinfo.io/ip (default 127.0.0.1/32)
own_ip = ["91.159.155.153/32"]

# environment variable
environment = "dev"

# region variable
region = "eu-central-1"

# default ami_id is ami-03c3a7e4263fd998c and that is available in eu-central-1 (Frankfurth region)
ami_id = "ami-03c3a7e4263fd998c"

# instance type that will be started (default t3.nano)
instance_type = "t3.nano"


