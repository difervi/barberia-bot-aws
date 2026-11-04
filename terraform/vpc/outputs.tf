output "vpc_id" {
  value = aws_vpc.bot_vpc.id
  description = "ID of the VPC"
}
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
  description = "ID of the public subnet"
}
