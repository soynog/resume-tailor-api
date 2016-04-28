class SectionSerializer < ActiveModel::Serializer
  attributes :id, :content, :style
  has_many :children
end
