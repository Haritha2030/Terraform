resource "aws_security_group" "allow_ssh_terraform"{
    name        = "dynamic demo" # allow_ssh is already there in my account
    description = "Allow port number 22 for SSH access"

    # usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }

# terraform will give us a variable block name
  dynamic "ingress" {
        for_each = var.ingress_rules
        content {
            from_port        = ingress.value.from_port
            to_port          = ingress.value.to_port
            protocol         = ingress.value.protocol     # you can give in 2ways ingress.value["protocol"] or ingress value.protocol
            cidr_blocks      = ingress.value.cidr_blocks #allow from everyone
        }
  }

  tags = {
    Name = "allow_sshh"
  }
}