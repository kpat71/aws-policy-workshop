# https://docs.amazonaws.cn/en_us/IAM/latest/UserGuide/access_tags.html

# https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest
resource "aws_key_pair" "deployer" {
  key_name   = "${var.tester_name}-${random_id.id.hex}-key"
  public_key = var.public_ssh_key
}


module "ec2" {
  source                        = "terraform-aws-modules/ec2-instance/aws"
  version                       = "2.16.0"

  name                          = "${var.tester_name}-${random_id.id.hex}"
  instance_count                = 1

  ami                           = var.ami_id
  instance_type                 = "t3.micro"
  monitoring                    = true
  vpc_security_group_ids        = [aws_security_group.allow_ssh.id]
  subnet_id                     = var.subnet
  associate_public_ip_address   = var.associate_public_ip_address
  key_name                      = aws_key_pair.deployer.id
  iam_instance_profile          = aws_iam_instance_profile.profile.name
  
  tags = {   
    Name        = "${var.tester_name}-${random_id.id.hex}"
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  }
}
