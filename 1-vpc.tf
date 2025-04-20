data "aws_vpc" "main"{
    id = "vpc-02305e07225055ad9"
}

output "vpc_cidr" {
  value       = data.aws_vpc.main.cidr_block
}
