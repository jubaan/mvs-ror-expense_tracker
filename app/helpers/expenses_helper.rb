module ExpensesHelper
  def expenses_by_most_recent
    current_user.expenses.ordered_expenses_by_most_recent
  end

  def expenses_by_most_recent_for_group(group)
    current_user.expenses.where(group: group).ordered_expenses_by_most_recent
  end

  def total_withouth_not_assigned
    id = current_user.groups.not_assigned_group.id
    current_user.expenses.total_no_ungroup(id)

  end

  def expenses_by_most_recent_for_index
    id = current_user.groups.not_assigned_group.id
    current_user.expenses.ec_grouped_ordered_expenses_by_most_recent(id)
  end

  def formated_date(expense)
    y = expense.created_at.year
    m = expense.created_at.month
    d = expense.created_at.day
    format('%d/%d/%d', d, m, y) # rubocop:disable Style/FormatStringToken
  end
end
