class User < ActiveRecord::Base
	before_save { username.downcase! }
	before_save { email.downcase! }
	validates :first_name, length: { maximum: 20 }
	validates :last_name, length: { maximum: 20 }
	validates :username, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 8 }
end
