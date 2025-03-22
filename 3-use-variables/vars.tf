variable "region" {
  default = "us-east-1"
}

variable "zone1" {
  default = "us-east-1a"
}

variable "amiID" {
  type = map
    default = {
        us-east-2 = "ami-03657b56516ab7912" # Need to update to correct AMI ID
        us-east-1 = "ami-0947d2ba12ee1ff75" # Need to update to correct AMI ID
    }
}