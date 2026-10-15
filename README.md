# Terraform Course Labs

## Overview

This repository contains hands-on Terraform labs, AWS infrastructure exercises, and CI/CD automation practices developed as part of my continuous DevOps learning journey.

The objective is to strengthen Infrastructure as Code (IaC), cloud automation, AWS administration, and platform engineering skills through practical implementations and real-world scenarios.

---

## Professional Focus

This repository supports my ongoing development in:

- Terraform
- AWS Cloud
- Infrastructure as Code (IaC)
- CI/CD Automation
- Jenkins
- Cloud Infrastructure Management
- DevOps Best Practices

---

## Learning Objectives

- Learn Terraform fundamentals and advanced concepts
- Provision and manage AWS resources through code
- Understand Terraform state management
- Develop reusable infrastructure configurations
- Explore CI/CD integration scenarios
- Apply infrastructure automation principles

---

## Technologies

- Terraform
- AWS
- Jenkins
- Git
- GitHub
- Bash

---

## DevOps Skills

- Infrastructure as Code (IaC)
- Cloud Infrastructure Provisioning
- Infrastructure Automation
- CI/CD Concepts
- Version Control
- Platform Engineering Fundamentals
- Cloud Administration

---

## Topics Covered

- Providers
- Variables
- Outputs
- Resources
- State Management
- EC2
- S3
- IAM
- Modules
- Jenkins Integration

---

## Repository Structure

The repository is organized into multiple branches containing lab exercises, experiments, and learning activities.

### Example Branches

- AWS_TF_1
- practica_1
- practica_2
- practica_3
- practica_4
- practica_5
- practica_6
- practica_7
- practica_jenkins

Each branch focuses on specific Terraform concepts, AWS services, or automation scenarios.

---

## Lab Progress

| Lab | Topic | Status |
|------|------|------|
| practica_1 | Terraform Basics | Completed |
| practica_2 | Variables and Outputs | Completed |
| practica_3 | Resources | Completed |
| practica_4 | AWS Integration | In Progress |
| practica_5 | State Management | In Progress |
| practica_jenkins | Jenkins Integration | Planned |

---

## Example Terraform Configuration

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_lab" {
  bucket = "terraform-lab-example"
}

resource "aws_instance" "web_server" {
  ami           = "ami-xxxxxxxx"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformLabServer"
  }
}
```

---

## Planned Enhancements

- Create reusable Terraform modules
- Provision complete AWS environments
- Implement remote state management examples
- Integrate Terraform with Jenkins pipelines
- Implement automated infrastructure deployment workflows
- Expand AWS architecture examples
- Add CI/CD automation demonstrations

---

## Certification Goals

This repository also serves as a practical learning environment for:

- HashiCorp Terraform Associate
- AWS Certified Cloud Practitioner
- AWS Solutions Architect – Associate

---

## Status

**Active Learning Project**

This repository is actively maintained and updated with new Terraform, AWS, and automation exercises as part of my professional development in DevOps, cloud infrastructure, and Infrastructure as Code (IaC).

---

## Author

**Oscar Saucedo**

DevOps Engineer | CI/CD | Jenkins | AWS | Terraform | GitHub | Release Automation

- LinkedIn: www.linkedin.com/in/oscar-saucedo-devops
- GitHub: github.com/osaucedo2026-lab
