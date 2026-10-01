output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.public_instance.public_ip
}