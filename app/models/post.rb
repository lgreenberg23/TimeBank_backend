class Post < ApplicationRecord
	belongs_to :poster, :class_name => "User"
	has_many :transactions
	# has_many :transfers, :through => :transactions
	has_many :contactors, :class_name => "User", :through => :transactions
end
 