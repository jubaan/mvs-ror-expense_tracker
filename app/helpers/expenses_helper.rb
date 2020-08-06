module ExpensesHelper
  def expenses_by_most_recent
    current_user.expenses.ordered_by_most_recent
  end
end
