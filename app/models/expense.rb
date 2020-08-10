class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  scope :ordered_expenses_by_most_recent, -> { order(created_at: :desc) }

  validates :name, :amount, presence: true
  validates :group, allow_nil: true
  validates :amount,
            numericality: { greater_than: 0, less_than_or_equal_to: 99_999 }
end
