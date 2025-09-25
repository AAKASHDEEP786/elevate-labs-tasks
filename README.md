# Infrastructure as Code (IaC) with Terraform - Docker Container

This project demonstrates **Infrastructure as Code (IaC)** using **Terraform** to provision and manage a **local Docker container**. It is designed as a hands-on exercise for learning how to automate container creation using Terraform.

---

## Objective

Provision a local Docker container using Terraform to understand **IaC principles** and automation.

---

## Features

- Automates Docker container creation using Terraform.
- Fully reproducible infrastructure using IaC.
- Supports `terraform plan`, `terraform apply`, and `terraform destroy` commands.
- Demonstrates Terraform state management for tracking infrastructure.

---

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed and running locally.
- [Terraform](https://www.terraform.io/downloads.html) installed.
- Basic knowledge of Terraform commands and Docker concepts.

---

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/AAKASHDEEP786/terraform-docker-container.git
   cd terraform-docker-container
   ```
2. **Initialize Terraform**
   ```bash
   terraform init
   ```
3. **Preview the infrastructure changes**
   ```bash
   terraform plan
   ```
4. **Apply the Terraform configuration**
   ```bash
   terraform apply
   ```
5. **Check Terraform state**
   ```bash
   terraform state list
   ```
Open your browser and go to:
   http://localhost:8081
   ---
   **Destroy the infrastructure when done**
   
   Note: This will remove the Docker container created by Terraform. Use with caution.
   ```bash
   terraform destroy
   ```

   ---

## Author
**Aakash Deep**





