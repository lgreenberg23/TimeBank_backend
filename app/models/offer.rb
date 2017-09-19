class Offer < ApplicationRecord
	belongs_to :poster, :class_name => "User"
	has_many :offer_users
	has_many :acceptors, :class_name => "User", :through => :offer_users
end
 