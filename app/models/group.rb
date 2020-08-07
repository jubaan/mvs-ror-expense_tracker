class Group < ApplicationRecord
  has_many :expenses, dependent: :destroy
  has_many :users, through: :expenses

  scope :ordered_groups_by_most_recent, -> { order(created_at: :desc) }
end
