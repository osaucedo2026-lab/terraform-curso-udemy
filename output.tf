# output "ec2_public_ip" {
#   description = "The public IP address of the EC2 instance"
#   value       = aws_instance.public_instance.public_ip
# }

output "ec2_public_ip" {
  description = "Public IPs of EC2 instances"
  value = {
    for k, v in aws_instance.public_instance :
    k => v.public_ip
  }
}

output "mesanje" {
  value = "Hola mundo"
}