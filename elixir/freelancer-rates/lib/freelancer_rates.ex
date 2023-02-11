defmodule FreelancerRates do
  @daily_hours 8.0
  @monthly_billable_days 22

  def daily_rate(hourly_rate), do: @daily_hours * hourly_rate

  def apply_discount(before_discount, discount), do: before_discount * (100 - discount) / 100

  def monthly_rate(hourly_rate, discount), do: hourly_rate
    |> daily_rate
    |> Kernel.*(@monthly_billable_days)
    |> apply_discount(discount)
    |> ceil

  def days_in_budget(budget, hourly_rate, discount), do: budget
    |> Kernel.div(hourly_rate |> daily_rate |> apply_discount(discount))
    |> Float.floor(1)
end
