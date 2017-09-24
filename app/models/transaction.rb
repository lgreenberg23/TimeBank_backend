class Transaction < ApplicationRecord
	belongs_to :post
	belongs_to :contacter, :class_name => "User"
	# has_one :transfer
end
