module ExpensesHelper
  def expenses_by_most_recent
    current_user.expenses.ordered_expenses_by_most_recent
  end

  def expenses_by_most_recent_for_index
    current_user.expenses.ec_grouped_ordered_expenses_by_most_recent
  end

  def expenses_by_most_recent_for_group(group)
    expenses_by_most_recent.where(group: group)
  end

  def formated_date(expense)
    y = expense.created_at.year
    m = expense.created_at.month
    d = expense.created_at.day
    format('%d/%d/%d', d, m, y) # rubocop:disable Style/FormatStringToken
  end
end
