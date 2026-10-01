
resource "aws_instance" "public_instance" {
  ami                    = var.ec2_specs.ami
  instance_type          = var.ec2_specs.instance_type
  subnet_id              = aws_subnet.public_subnet_virginia.id
  key_name               = data.aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo echo 'Hola mama soy Pakito y ya no hare travesuras!' > /home/ec2-user/hello.txt",
  #     "sudo chmod 777 /home/ec2-user/hello.txt"
  #   ]
  #   connection {
  #     type = "ssh"
  #     host = self.public_ip
  #     user = "ec2-user"
  #     private_key = file("mykey.pem")
  #   }
  # }

  tags = {
    Name = "public-instance"
  }

}


