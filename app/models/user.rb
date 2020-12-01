class User < ApplicationRecord
    validates :username, presence: true,
               uniqueness: { case_sensitive: false },
               length: { minimum:6, maximum:12}

    validates :email, presence: true
    validates :password, length: { minimum: 7 }
    has_many :posts
    has_many :comments
end
