resource "aws_instance" "unifiNetworkController" {
  depends_on = [
    module.key_pair
  ]
  ami = data.aws_ami.ubuntu_server.id
  instance_type = var.instance_type
  
  //Subnet
  subnet_id = "${aws_subnet.hauPublicSubnet1.id}"

  //Security Group
  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.newSSHPort.id}",
    "${aws_security_group.cockpit.id}",
    "${aws_security_group.unifiCloudAccess.id}",
    "${aws_security_group.stun.id}",
    "${aws_security_group.unifiInform.id}",
    "${aws_security_group.unifiCaptivePortal8880.id}",
    "${aws_security_group.unifiCaptivePortal8843.id}",
    "${aws_security_group.letsEncrypt80.id}",
    "${aws_security_group.letsEncrypt443.id}"
    ]

  //PEM key
  key_name = var.key_name

  tags = {
    Name = "UniFi Network Controller"
  }
}