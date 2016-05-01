#
class Version < ActiveRecord::Base
  belongs_to :document, inverse_of: :versions
  has_many :tags
  has_many :sections, through: :tags
end
