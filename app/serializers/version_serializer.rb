class VersionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :document
end
