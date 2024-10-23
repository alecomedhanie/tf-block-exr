output "my_ip" {
  value = aws_instance.myinstance.public_ip

}
# Output the ami ID
output "ami" {
  value = data.aws_ami.my_ami.id
}

# Output the VPC ID
output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

# Output the Subnet ID
output "subnet_id" {
  value = aws_subnet.my_subnet.id
}