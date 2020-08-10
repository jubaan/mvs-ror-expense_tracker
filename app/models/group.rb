class Group < ApplicationRecord
  mount_uploader :icon, IconUploader

  has_many :expenses, dependent: :destroy
  has_many :users, through: :expenses

  scope :ordered_groups_by_most_recent, -> { order(created_at: :desc) }

  validates :name, :icon, presence: true, length: { in: 3..20 }
end
