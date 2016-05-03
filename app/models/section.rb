#
class Section < ActiveRecord::Base
  belongs_to :parent, polymorphic: true
  has_many :children, as: :parent,
                      class_name: 'Section',
                      foreign_key: 'parent_id',
                      dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :versions, through: :tags
end
