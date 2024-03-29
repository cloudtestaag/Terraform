output "name" {
  value = aws_instance.test[1].public_ip
  sensitive = true
}

output "youknow" {
  value = local.trying
}
