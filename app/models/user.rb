#
class User < ActiveRecord::Base
  include Authentication
  has_many :documents, inverse_of: :user
end
