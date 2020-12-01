class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 8 }
  has_many :comment
  belongs_to :user
end
