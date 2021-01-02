class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :body, :title, presence: true
end
