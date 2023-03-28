output "ec2_public_ip" {
  value = aws_instance.unifiNetworkController.public_ip
}