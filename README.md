This project automates the provisioning of AWS infrastructure using **Terraform (Infrastructure as Code)**.

The infrastructure includes:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- IAM Role & Instance Profile
- EC2 Instance
- S3 Bucket

The EC2 instance is launched with **User Data** to perform initial server configuration automatically.

---

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- AWS S3
- IAM
- Security Groups
- User Data
- Infrastructure as Code (IaC)

---

## Project Structure

```
terraform-aws-project/
│
├── provider.tf
├── versions.tf
├── variables.tf
├── terraform.tfvars
├── vpc.tf
├── subnet.tf
├── igw.tf
├── route-table.tf
├── security-group.tf
├── iam.tf
├── ec2.tf
├── s3.tf
├── outputs.tf
```

---

## Features

- Automated infrastructure provisioning
- Custom VPC and networking
- Public EC2 instance
- Security Group configuration
- IAM Role attachment
- S3 Bucket creation
- EC2 User Data automation
- Reusable Terraform configuration

---

## Prerequisites

- Terraform
- AWS Account
- IAM User with programmatic access

> **Note:** In this project, AWS credentials are configured directly in `provider.tf` for learning purposes. For production environments, use AWS CLI, environment variables, or IAM Roles instead of embedding credentials in Terraform files.

---

## Deployment

Initialize Terraform

```bash
terraform init
```

Validate configuration

```bash
terraform validate
```

Preview infrastructure

```bash
terraform plan
```

Create infrastructure

```bash
terraform apply
```

Destroy infrastructure

```bash
terraform destroy
```

---

## Outputs

After deployment, Terraform displays:

- EC2 Public IP
- VPC ID
- Subnet ID
- S3 Bucket Name

---

**Your Name**

GitHub: https://github.com/yourusername
