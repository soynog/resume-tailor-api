# An example for user of the template
class Example < ActiveRecord::Base
  belongs_to :user
  validates :text, :user, presence: true
end
