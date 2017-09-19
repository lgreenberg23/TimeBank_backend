class OfferUser < ApplicationRecord
	belongs_to :offer
	belongs_to :acceptor, :class_name => "User"
end
