class User < ApplicationRecord
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: { message: 'The email is already taken' }
  validates :username, presence: true, uniqueness: { message: 'The user is already taken' }
  # validates :password, presence: true, length: { minimum: 6 }
end
