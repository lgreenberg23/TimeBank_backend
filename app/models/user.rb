class User < ApplicationRecord

	has_secure_password
	validates :email, uniqueness: true
	validates :email, presence: true

	has_many :posts, :foreign_key => 'poster_id'
	has_many :transactions, through: :posts
	has_many :exchanges, class_name: 'Transaction', :foreign_key => 'contacter_id'


end


