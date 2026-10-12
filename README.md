# Terraform AWS Infrastructure

## 📌 Project Overview

This project provisions AWS infrastructure using **Terraform (Infrastructure as Code)**.

The infrastructure creates a custom VPC with multi-AZ public subnets, Internet Gateway, route tables, Security Group, and EC2 instances.

The project demonstrates how Terraform can automate and manage AWS infrastructure in a repeatable and scalable way.

## 🏗️ Architecture

```text
                         Internet
                            │
                            ▼
                  ┌──────────────────┐
                  │ Internet Gateway │
                  └────────┬─────────┘
                           │
                    ┌──────▼──────┐
                    │     VPC     │
                    │ 10.0.0.0/16 │
                    └──────┬──────┘
                           │
              ┌────────────┴────────────┐
              │                         │
       ┌──────▼──────┐           ┌──────▼──────┐
       │ Public Subnet│           │ Public Subnet│
       │ 10.0.1.0/24 │           │ 10.0.2.0/24 │
       │ ap-south-1a │           │ ap-south-1b │
       └──────┬──────┘           └──────┬──────┘
              │                         │
       ┌──────▼──────┐           ┌──────▼──────┐
       │   EC2 #1    │           │   EC2 #2    │
       │ Web Server  │           │ Web Server  │
       └─────────────┘           └─────────────┘
```

## ☁️ AWS Resources

- VPC
- 2 Public Subnets across 2 Availability Zones
- Internet Gateway
- Public Route Table
- Route Table Associations
- Security Group
- 2 EC2 Instances

## 🛠️ Technologies

- Terraform
- AWS
- Amazon EC2
- Amazon VPC
- Git & GitHub
- Linux

## 📂 Terraform Concepts Demonstrated

- Terraform Providers
- Resources
- Input Variables
- `terraform.tfvars`
- Outputs
- `for_each`
- Resource Dependencies
- Terraform State
- Infrastructure as Code

## 🔐 Security Group

The Security Group allows:

| Protocol | Port | Purpose |
|---|---:|---|
| TCP | 22 | SSH |
| TCP | 80 | HTTP |
| All | Outbound | Internet access |

> SSH access should be restricted to a trusted IP address in a production environment instead of allowing `0.0.0.0/0`.

## 🚀 Deployment

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Format the configuration

```bash
terraform fmt
```

### 3. Validate the configuration

```bash
terraform validate
```

### 4. Review the execution plan

```bash
terraform plan
```

### 5. Create the infrastructure

```bash
terraform apply
```

### 6. View the EC2 public IPs

```bash
terraform output
```

## 🧹 Cleanup

To remove the infrastructure:

```bash
terraform destroy
```

## 🎯 Learning Outcomes

This project provided hands-on experience with:

- Designing AWS VPC networking
- Creating infrastructure using Terraform
- Using variables instead of hard-coded configuration
- Using `for_each` for reusable infrastructure
- Managing AWS networking components
- Configuring EC2 instances
- Debugging Terraform and AWS errors
- Understanding Terraform resource dependencies
- Following Infrastructure-as-Code practices
