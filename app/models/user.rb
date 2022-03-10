class User < ApplicationRecord
  has_secure_password 
  validates_presence_of :name, :email, :password_digest
  validates_uniqueness_of :name, :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  # validates_uniqueness_of :email
end
