class Group < ApplicationRecord
  mount_uploader :icon, IconUploader

  has_many :expenses, dependent: :destroy
  has_many :users, through: :expenses

  scope :ordered_groups_by_most_recent, -> { order(created_at: :desc) }
  scope :collection, -> { all.order('name ASC').uniq }

  validates :name, presence: true, length: { in: 3..20 }
  validates :icon, presence: true, allow_nil: true, allow_blank: true
end
