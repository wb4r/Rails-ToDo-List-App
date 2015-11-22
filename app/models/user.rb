class User < ActiveRecord::Base
  has_many :todos

  validates :username, presence: true, uniqueness: true, length: {minimum: 3}
  validates :password, presence: true, on: :create, length: {minimum: 6}
  has_secure_password validations: false
end