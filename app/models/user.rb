class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :expenses, foreign_key: 'author_id', dependent: :destroy
  has_many :groups, through: :expenses
end
