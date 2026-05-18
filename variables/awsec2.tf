resource "aws_instance" "backend" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = var.tags

}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = var.ssh_port1
    to_port     = var.ssh_port1
    protocol    = var.protocol_all
    cidr_blocks = var.allowed_cidr
  }

  tags = {
    Name      = var.sg_name
    Environment = var.environment
    CreatedBy = var.instance_createdby
      }
}
