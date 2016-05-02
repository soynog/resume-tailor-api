class VersionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :document
  has_many :tags
end
