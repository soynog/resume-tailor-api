#
class Document < ActiveRecord::Base
  belongs_to :user, inverse_of: :documents
  validates_presence_of :title, :user_id
  has_many :children, as: :parent,
                      class_name: 'Section',
                      foreign_key: 'parent_id'
  has_many :versions, inverse_of: :document
end
