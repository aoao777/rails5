class User < ApplicationRecord
  validates :name, presence: true, length: {in: 1..15}
  email_address = \A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format:{email_address}
  password_pattern = \A(?=.＊?[a-z])(?=.＊?\d)[a-z\d]{8,32}}\z/i
  validates :password, length: {in: 8..32}, format:{password_pattern}

  has_secure_password
end
