class User < ApplicationRecord
	has_many :articles
	has_many :comments
	
 	validates :email, presence: true
end
