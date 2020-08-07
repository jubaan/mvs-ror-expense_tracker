module ExpensesHelper
  def expenses_by_most_recent
    current_user.expenses.ordered_by_most_recent
  end

  def formated_date(expense)
    y = expense.created_at.year
    m = expense.created_at.month
    d = expense.created_at.day
    '%d/%d/%d' % [d, m, y]
  end
end
