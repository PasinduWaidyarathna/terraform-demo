# Terraform AWS Project

This repository contains Terraform configurations to deploy AWS infrastructure including:

- AWS Provider configuration
- VPC data lookup
- EC2 instance deployment

## Project Structure

```
├── 0-providers.tf     # AWS provider configuration
├── 1-vpc.tf           # VPC data source and output
├── 2-ec2.tf           # EC2 instance resource
├── .gitignore         # Git ignore file
└── README.md          # This file
```

## Resource Details

### AWS Provider
- Region: us-east-2
- AWS Provider version: ~> 5.94

### VPC
- Uses an existing VPC with ID vpc-02305e07225055ad9
- Outputs the VPC CIDR block

### EC2 Instance
- AMI: ami-04f167a56786e4b09 (Ubuntu)
- Instance Type: t2.micro
- Tagged as "WebServer"

## Usage

Initialize Terraform:
```bash
terraform init
```

Plan your infrastructure:
```bash
terraform plan
```

Apply the configuration:
```bash
terraform apply
```

Destroy resources when finished:
```bash
terraform destroy
```

## Notes

- This configuration uses an existing VPC rather than creating a new one
- Security groups and subnets are not explicitly defined in this configuration
- The EC2 instance will be created in the default subnet of the specified VPC
