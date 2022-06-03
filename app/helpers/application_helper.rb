module ApplicationHelper
  def display_price(amount)
    "#{amount.to_f / 100} €"
  end
end
