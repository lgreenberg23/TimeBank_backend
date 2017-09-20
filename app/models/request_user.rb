class RequestUser < ApplicationRecord
	belongs_to :request
	belongs_to :acceptor, :class_name => "User"
end
