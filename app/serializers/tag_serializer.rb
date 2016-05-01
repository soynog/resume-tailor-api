class TagSerializer < ActiveModel::Serializer
  attributes :id
  has_one :section
  has_one :version
end
