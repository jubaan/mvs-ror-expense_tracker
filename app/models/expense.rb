class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
