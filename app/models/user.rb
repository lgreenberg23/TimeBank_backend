class User < ApplicationRecord

	has_secure_password

	has_many :offers, :foreign_key => 'poster_id'
	has_many :offer_users, :foreign_key => 'acceptor_id'
	has_many :requests, through: :offer_users
	# has_many :offers, through: :offer_users

	# same deal for requests 
	has_many :requests, :foreign_key => 'poster_id'
	has_many :request_users, :foreign_key => 'acceptor_id'
	has_many :offers, through: :request_users
	# has_many :requests, through: :request_users
end

# make TRANSACTIONS table / model

