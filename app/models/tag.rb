#
class Tag < ActiveRecord::Base
  belongs_to :section, inverse_of: :tags
  belongs_to :version, inverse_of: :tags
end
