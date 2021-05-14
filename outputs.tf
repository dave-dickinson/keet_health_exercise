output "aws_instance_private_ip" {
  description = "provide private ip address of instance"
  value       = module.ec2_example.private_ip
}
