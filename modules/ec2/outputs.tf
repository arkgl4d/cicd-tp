output "instance_id" {
  value       = aws_instance.my_ec2.id
  description = "L'ID de l'instance EC2 créée"
}