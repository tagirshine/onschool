class User < ActiveRecord::Base
  attr_accessor :name, :email
  validates :name, presence: true, uniqueness: true
  has_secure_password
  attr_accessor :password, :password_digest
  validates :password, length: { minimum: 4 }
end
