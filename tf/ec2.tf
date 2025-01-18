
# + Instancia EC2
resource "aws_instance" "mi_instancia" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI para Ubuntu
  instance_type = "t2.micro"
  key_name      = var.key_name
  subnet_id     = aws_subnet.mi_subred_publica.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  associate_public_ip_address = true

  user_data = file("user_data.sh")

  tags = {
    Name = "MiInstanciaEC2"
  }
}

