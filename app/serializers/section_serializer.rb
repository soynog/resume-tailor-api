class SectionSerializer < ActiveModel::Serializer
  attributes :id, :content, :style, :parent_id, :parent_type
end
