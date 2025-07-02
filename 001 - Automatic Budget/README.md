# Terraform AWS Monthly Budget Tracker

This project uses Terraform to automatically create and manage an AWS account-level monthly budget. It sets a hard cost limit and allows for tracking spend via the AWS Budgets service, helping you stay on top of monthly cloud costs with automation and minimal manual effort.

---

## 🛠 What This Does

- Provisions an AWS Budget resource using the AWS Budgets API
- Tracks monthly spend against a defined limit
- Can optionally be configured to send alerts via SNS or email (not included here, but extensible)
- Uses Terraform for repeatable infrastructure-as-code budget management

---

## ⚙️ Requirements

- AWS CLI credentials set (`aws configure`)
- Terraform CLI installed (v1.0+ recommended)
- AWS Identity with permissions to manage `budgets.amazonaws.com`
- Terraform backend initialized (`terraform init`)

---

## ▶️ Deployment

- Clone this repository
- Initialize, Validate and Plan Terraform
- Apply Terraform

