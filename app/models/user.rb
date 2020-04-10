class User < ApplicationRecord
  validates :email, presence: true, length: { maximum: 255 }
  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
