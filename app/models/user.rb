class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, uniqueness: true,
                       length: { maximum: 25 }
  validates :password, presence: true
  validates :email,    presence: true, uniqueness: true
  validates :name,     presence: true
  validates :age,      presence: true,
                       numericality: { greater_than_or_equal_to: 18 }
end
