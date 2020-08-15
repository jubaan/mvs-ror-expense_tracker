class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]

  def index
    cookies[:original_referrer] = expenses_path
    @expenses = Expense.includes(%i[author group]).limit(10)
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = current_user.expenses.new(expense_params)

    if @expense.save
      redirect_to expenses_path,
                  flash: { notice: 'Expense was successfully created.' }
    else
      render :new, flash: { alert: 'Review your data' }
    end
  end

  def update
    if @expense.update(expense_params)
      redirect_to cookies[:original_referrer],
                  notice: 'Expense was successfully updated.'
    else
      render :edit, alert: 'Something went wrong. Try again.'
    end
  end

  def destroy
    @expense.destroy
    if @expense.destroy
      redirect_to request.referrer,
                  notice: 'Expense was successfully destroyed.'
    else
      render :edit, alert: 'Something went wrong. Try again.'
    end
  end

  private

  def set_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:name, :amount, :group_id)
  end
end
