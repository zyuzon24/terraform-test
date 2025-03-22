resource "aws_instance" "my-instance" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.my-key.key_name
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  availability_zone      = "us-east-1a"


  tags = {
    Name    = "my-instance"
    Project = "practice"
  }
}