output "instance_ami" {
    value = "aws_instace.my_ec2.ami"
}

output "instance_arn" {
    value = "aws_instace.my_ec2.arn"
}

output "instance_public_ip" {
    description = "O endereco Ip publico da instancia"
    value       = aws_instance.my_ec2.public_ip
}