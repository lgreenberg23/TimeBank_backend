class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :hours_banked, :poster, :contacter, :location
  has_many :posts
end
