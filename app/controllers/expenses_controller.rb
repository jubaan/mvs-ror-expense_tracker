class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]

  def index
    @expenses = Expense.all
  end

  def show; end

  def new
    @expense = Expense.new
  end

  def edit; end

  def create
    @expense = expense.new(expense_params)

    if @expense.save
      redirect_to @expense, notice: 'Expense was successfully created.'
    else
      render :new
    end
  end

  def update
    if @expense.update(expense_params)
      redirect_to @expense, notice: 'Expense was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @expense.destroy
    redirect_to groups_url, notice: 'Expense was successfully destroyed.'
  end

  private

  def set_group
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.fetch(:expense, {})
  end
end
