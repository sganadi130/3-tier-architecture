resource "aws_instance" "k8s_nodes" {
  count         = 4
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.k8s_sg.id]

  tags = {
    Name = count.index == 0 ? "k8s-master" : "k8s-worker-${count.index}"
  }
}

