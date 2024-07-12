output "instance_ami" {
    value = "aws_instace.web.ami"
}

output "instance_arn" {
    value = "aws_instace.web.arn"
}

output "instance_public_ip" {
    description = "O endereco Ip publico da instancia"
    value       = aws_instance.web.public_ip
}