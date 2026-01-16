# Terraform Modules Based Project

This repository demonstrates a production-oriented Terraform architecture designed from a Platform Engineering perspective. It focuses on reusable infrastructure modules, environment separation, and secure remote state management.

## Key Features

- Modular Terraform design (VPC, EC2, IAM, Security Groups, etc.)
- Environment-based structure (dev / staging / prod)
- Remote Terraform state using AWS S3 and DynamoDB
- State locking and consistency management
- Infrastructure as Code (IaC) best practices
- Clean GitHub workflow with sensitive files excluded

## Technologies Used

- Terraform
- AWS (EC2, VPC, IAM, S3, DynamoDB)
- Git & GitHub

## Architecture Principles

- DRY (Don’t Repeat Yourself) using Terraform modules
- Immutable infrastructure approach
- Secure state handling (no state files committed)
- Scalable and maintainable folder structure

## Use Case

This project is intended for:
- Learning Platform Engineering concepts
- Demonstrating Terraform best practices
- Interview-ready portfolio showcasing real-world IaC design
- Foundation for production AWS infrastructure provisioning

## Author

Im@Rsrivastava  
Backend Engineer
