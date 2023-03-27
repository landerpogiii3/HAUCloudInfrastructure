#Security Group configuration
resource "aws_security_group" "ssh" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows initial SSH connection"
  name_prefix = "ssh"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "newSSHPort" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows access through the new SSH port"
  name_prefix = "newSSHPort"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 2222
    to_port = 2222
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "cockpit" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows Cockpit Web Access"
  name_prefix = "cockpit"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 9090
    to_port = 9090
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "unifiCloudAccess" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows UniFi Cloud Access"
  name_prefix = "unifiCloudAccess"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 8443
    to_port = 8443
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "stun" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows STUN ports"
  name_prefix = "stun"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 3478
    to_port = 3478
    protocol = "udp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "unifiInform" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows set-inform through"
  name_prefix = "unifiInform"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "unifiCaptivePortal8880" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows UniFi Captive Portal Access"
  name_prefix = "unifiCaptivePortal80"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 8880
    to_port = 8880
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "unifiCaptivePortal8843" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows UniFi Captive portal Access"
  name_prefix = "unifiCaptivePortal8843"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 8843
    to_port = 8843
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "letsEncrypt80" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows Lets Encrypt ports"
  name_prefix = "letsEncrypt80"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

resource "aws_security_group" "letsEncrypt443" {
  vpc_id = "${aws_vpc.hauVPC.id}"
  description = "Allows Lets Encrypt ports"
  name_prefix = "letsEncrypt443"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ var.hauPublicIPAdress ]
  }
}

