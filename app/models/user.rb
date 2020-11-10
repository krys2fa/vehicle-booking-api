class User < ApplicationRecord
  has_secure_password
  has_many :appointments

  validates_presence_of :username, :password
  validates_uniqueness_of :username
end
