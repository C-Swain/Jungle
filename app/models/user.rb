class User < ActiveRecord::Base
  # bcrypt 
  has_secure_password

  # user registration form validators
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 4}
  validates :password_confirmation, presence: true
end
