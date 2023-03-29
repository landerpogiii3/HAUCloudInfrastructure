output "SSH_syntax" {
  value = "ssh -i *.pem ubuntu@${aws_instance.unifiNetworkController.public_ip}"
}