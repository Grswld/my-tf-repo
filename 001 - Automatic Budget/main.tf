resource "aws_budgets_budget" "terraform-griswold" {
  name              = "terraform budget"
  budget_type       = "COST"
  limit_amount      = "10.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2025-01-01_00:00"
}