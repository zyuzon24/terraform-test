# Used to access/SSH into the instance
resource "aws_key_pair" "my-key" {
  key_name = "my-key"
  public_key =  "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM1AuSRpozRVm/ECjRXujAUGVGP5FLOQs3RmP5K0Q3v9 zyuzon24@gmail.com"
}