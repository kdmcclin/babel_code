class User < ActiveRecord::Base
	has_secure_password
	has_many :reply_snippets
	has_many :original_snippets
  has_many :votes
  validates :email, presence: true
end
