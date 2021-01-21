# https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest

module "ec2" {
  source                        = "terraform-aws-modules/ec2-instance/aws"
  version                       = "~> 2.0"

  name                          = "${var.tester_name}-${random_id.id.hex}"
  instance_count                = 1

  ami                           = "ami-ebd02392"
  instance_type                 = "t2.micro"
  monitoring                    = true
  vpc_security_group_ids        = ["sg-12345678"]
  subnet_id                     = var.subnet
  associate_public_ip_address   = var.associate_public_ip_address
  key_name                      = var.public_ssh_key  
  tags = {
    Terraform   = "true"
    Environment = "var.environment"
    Tester      = "${var.tester_name}"
  }
}