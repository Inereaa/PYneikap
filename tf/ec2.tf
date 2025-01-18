
# + Instancia EC2
resource "aws_instance" "mi_instancia" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.apache_server_ssh.key_name
  subnet_id     = aws_subnet.mi_subred_publica.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  associate_public_ip_address = true

  user_data = file("user_data.sh")

  tags = {
    Name = "MiInstanciaEC2"
  }
}

