class Section < ActiveRecord::Base
  belongs_to :parent, polymorphic: true
  has_many :children, as: :parent,
                      class_name: 'Section',
                      foreign_key: 'parent_id'
  has_many :sections, through: :tags
end
