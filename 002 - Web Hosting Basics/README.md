# 🛠️ Apache EC2 Instance Restore via Terraform

This project uses Terraform to automatically provision an EC2 instance running Apache, restored from a pre-configured Amazon Machine Image (AMI). It's designed for fast redeployment of a previously backed-up Apache web host environment.

---

## 📦 Project Structure

- `main.tf` — Defines the EC2 instance resource to restore from AMI
- `variables.tf` — Declares input variables used in the configuration
- `terraform.tfvars` — Contains environment-specific values (your AMI, subnet, etc.)

---

## 🚀 What This Does

- Restores an EC2 instance from a known-good AMI
- Applies Apache configuration and OS setup from the image
- Associates the instance with a defined subnet and security groups
- Skips AMI tracking on re-apply using `lifecycle { ignore_changes = [ami] }`

---

## 🔧 Requirements

- Terraform >= 1.0
- Valid AWS credentials set (`aws configure`)
- A pre-built AMI containing your Apache configuration
- A subnet ID and security group(s) that allow:
  - **Inbound port 22** (SSH)
  - **Inbound port 80** (HTTP)

## ▶️ Deployment

- Clone this repository
- Edit terraform.tfvars with your specific values
- Initialize Terraform


## ✅ Success Criteria

- EC2 instance launches from your defined AMI
- Apache is running on port 80 (from your AMI setup)
- SSH access is available using your key