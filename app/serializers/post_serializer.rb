class PostSerializer < ActiveModel::Serializer
  attributes :id, :poster, :name, :offer, :request, :description, :location, :category, :expiration_date
  has_many :transactions
end


