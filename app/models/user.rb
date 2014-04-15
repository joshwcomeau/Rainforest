class User < ActiveRecord::Base
  validates :email, presence: true
  validates :email, format: { with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,11}/i, message: "must be valid (eg. name@domain.com)"}
  validates :password, length: { in: 6..20 }

  has_secure_password


end
