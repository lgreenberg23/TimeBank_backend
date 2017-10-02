class TransactionSerializer < ActiveModel::Serializer
	attributes :id, :contacter, :post, :status, :hours, :verified, :message
	belongs_to :post
end
