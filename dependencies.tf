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

data "aws_ami" "ubuntu_server_UniFi_installed" {
  most_recent = true
  owners = [ "133353854791" ]

  filter {
    name = "name"
    values = [ "UNC" ]
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
    values = [ "Windows_Server-2022-English-Core-Base*" ]
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

