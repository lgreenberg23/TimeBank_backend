class PostSerializer < ActiveModel::Serializer
  attributes :id, :poster, :name
  has_many :transactions
end
