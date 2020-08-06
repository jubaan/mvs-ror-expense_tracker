module UsersHelper
  def timeline_expenses
    Expenses.all.ordered_by_most_recent.where(user: current_user)
  end
end
