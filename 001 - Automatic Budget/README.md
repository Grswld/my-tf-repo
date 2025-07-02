# Terraform AWS Monthly Budget Tracker

This Terraform module provisions a monthly budget for your AWS account to help monitor and control costs.

## 🚀 Features

- Automatically creates an AWS Budgets resource
- Sets a monthly spending limit (e.g. `$10/month`)
- Tracks actual spend and triggers notifications (if configured)
- Easily customizable budget amount and time period

## 📄 Requirements

- Terraform >= 1.0
- AWS account credentials configured

## 📦 Usage

```hcl
module "aws_budget" {
  source = "./budget"

  budget_limit = 10
  time_unit    = "MONTHLY"
  budget_name  = "Terraform Monthly Budget"
}