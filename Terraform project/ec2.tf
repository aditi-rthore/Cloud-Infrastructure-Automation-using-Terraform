resource "aws_instance" "web" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]
  iam_instance_profile = aws_iam_instance_profile.profile.name

  key_name = "main-key"

  #to use in putty for linux commands in windows OS
  user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install apache2 -y
                sudo systemctl start apache2
                sudo bash -c 'echo your very first web server > /var/www/html/index.html'
                EOF

  tags = {
    Name = "Terraform-EC2"
  }
}
