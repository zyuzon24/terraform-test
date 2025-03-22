resource "aws_instance" "my-instance" {
  ami                    = var.amiID[var.region]
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.my-key.key_name
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  availability_zone      = var.zone1


  tags = {
    Name    = "my-instance"
    Project = "practice"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  connection {
    type        = "ssh"
    user        = var.webuser
    private_key = file("~/.ssh/id_ed25519")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

}