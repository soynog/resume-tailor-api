class TagSerializer < ActiveModel::Serializer
  attributes :id, :section_id
  has_one :section
  has_one :version
end
