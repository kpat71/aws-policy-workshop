variable "tester_name" {
  description = "User name"
}

variable "associate_public_ip_address" {
  description = "Default IP allocated to instance"
  default = false
}

variable "subnet" {
  description = "Subnets which allow public access"
  default = []
}

variable "public_ssh_key" {
  description = "Public SSH key to use login to ec2"
}

variable "own_ip" {
  description = "Your own IP to allow SSH"
  default = "127.0.0.1/32"
}

variable "region" {
  description = "VPC Region"
  type        = string
}