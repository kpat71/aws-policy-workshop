# sg
resource "aws_security_group" "allow_ssh" {
  name        = "${var.tester_name}-${random_id.id.hex}-allow-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.own_ip
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.tester_name}-${random_id.id.hex}-allow-ssh"
    Terraform   = "true"
    Environment = var.environment
    Tester      = var.tester_name
  }  
}