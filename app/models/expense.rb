class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  scope :ordered_expenses_by_most_recent,
        -> { includes(%i[group author]).order(created_at: :desc) }
  scope :g_ordered_expenses_by_most_recent, -> { order(created_at: :desc) }
  scope :ec_grouped_ordered_expenses_by_most_recent,
        lambda {
          where('group_id <> 1').includes(%i[group author]).order(
            created_at: :desc
          )
        }
  scope :grouped_ordered_expenses_by_most_recent,
        -> { where('group_id <> 1').order(created_at: :desc) }
  scope :count_expenses, ->(group) { where(group: group).count }

  scope :total, -> { sum(:amount) }
  scope :total_for_group, ->(group) { where(group: group).sum(:amount) }

  validates :name, :amount, presence: true
  validates :group, presence: true
  validates :name, length: { in: 3..50 }
  validates :amount,
            numericality: { greater_than: 0, less_than_or_equal_to: 99_999 }
end
