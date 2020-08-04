class AddColumnToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_reference :expenses, :group, null: false, foreign_key: true
  end
end
