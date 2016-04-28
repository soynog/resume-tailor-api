class Document < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :user_id
  has_many :children, as: :parent,
                      class_name: 'Section',
                      foreign_key: 'parent_id'
end
