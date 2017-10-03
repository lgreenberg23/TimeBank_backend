class TransactionSerializer < ActiveModel::Serializer
	attributes :id, :contacter, :post, :status, :hours, :verified, :message, :hours_logged
	belongs_to :post
end
