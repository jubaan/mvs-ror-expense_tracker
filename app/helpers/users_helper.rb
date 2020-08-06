module UsersHelper
  def timeline_expenses
    Expenses.all.ordered_by_most_recent.where(user: current_user)
  end

  def user_name
    name = current_user.name.downcase.capitalize
    name.length > 10 ? "Welcome" : "Hi, #{name}!"
  end
end
