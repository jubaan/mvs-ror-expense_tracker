class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  scope :grouped_ordered_expenses_by_most_recent, -> { where('group_id <> 1').order(created_at: :desc) }
  scope :not_grouped_ordered_expenses_by_most_recent, -> { where('group_id = 1').order(created_at: :desc) }

  validates :name, :amount, presence: true
  validates :group, presence: true, allow_nil: true, allow_blank: true
  validates :amount,
            numericality: { greater_than: 0, less_than_or_equal_to: 99_999 }
end
