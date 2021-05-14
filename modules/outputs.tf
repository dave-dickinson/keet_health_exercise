output "private_ip" {
  description = "private ip address of the instance"
  value       = aws_instance.this.private_ip
}
