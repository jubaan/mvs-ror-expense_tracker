class User < ApplicationRecord
  mount_uploader :image, ImageUploader

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :expenses, foreign_key: 'author_id', dependent: :destroy
  has_many :groups, through: :expenses

  validates :name, :email, presence: true, length: { in: 1..50 }
  validates :password, presence: true, length: { in: 6..20 }, unless: -> { password.blank? }
end
