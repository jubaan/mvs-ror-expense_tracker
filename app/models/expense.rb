class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  scope :ordered_expenses_by_most_recent, -> { order(created_at: :desc) }

  validates :name, presence: true
  validates :amount, presence: true
  validates :group, presence: true
end
