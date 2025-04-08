output "instance_info" {
  value = aws_instance.web
}

output "instance_id" {
  value = aws_instance.web.id
}


output "instance_publicIP" {
  value = aws_instance.web.public_ip
}

output "instance_privateIP" {
  value = aws_instance.web.private_ip
}