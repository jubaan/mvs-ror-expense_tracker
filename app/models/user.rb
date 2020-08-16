class User < ApplicationRecord
  after_create :add_not_assigned_group

  mount_uploader :image, ImageUploader

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :expenses, foreign_key: 'author_id', dependent: :destroy
  has_many :groups

  validates :name, :email, presence: true, length: { in: 1..50 }
  validates :password,
            presence: true,
            length: { in: 6..20 },
            unless: -> { password.blank? }

  def add_not_assigned_group
    groups.create(name: 'Not Assigned')
  end
end
