class Request < ApplicationRecord
	# same as offer
	belongs_to :poster, :class_name => "User"
	has_many :request_users
	has_many :acceptors, :class_name => "User", :through => :offer_users
end
