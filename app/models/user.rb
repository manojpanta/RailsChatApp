class User < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :email
  validates_presence_of :password
  has_secure_password
end
