class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
  has_many :children
  has_many :versions
end
