data "aws_ami" "ubuntu_server" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name = "name"
    values = [ "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64*" ]
  }

  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }

  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
}

data "aws_ami" "windows_server" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name = "name"
    values = [ "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64*" ]
  }

  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }

  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
}

