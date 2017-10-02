class TransactionSerializer < ActiveModel::Serializer
	attributes :contacter, :post, :accepted, :hours, :verified 
	belongs_to :post
end
