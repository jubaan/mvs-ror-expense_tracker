module UsersHelper
  def timeline_expenses
    Expenses.all.ordered_by_most_recent.where(user: current_user)
  end

  def user_name
    name = current_user.name.downcase.capitalize
    name.length > 7 ? 'Welcome' : "Hi, #{name}!"
  end

  def total_expenses_current_user
    sum = 0
    current_user.expenses.each { |e| sum += e.amount }
    number_to_currency(sum)
  end
end
