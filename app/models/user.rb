class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :f_name, :l_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /@/ }
  has_secure_password
end
