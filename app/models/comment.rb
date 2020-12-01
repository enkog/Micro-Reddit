class Comment < ApplicationRecord
  validates :body, presence: true, length: {minimum:8}
  belongs_to :user
  belongs_to :post
end
