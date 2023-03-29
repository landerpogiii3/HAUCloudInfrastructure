output "ec2_public_ip" {
  value = "ssh -i *.pem ubuntu@${aws_instance.unifiNetworkController.public_ip}"
}