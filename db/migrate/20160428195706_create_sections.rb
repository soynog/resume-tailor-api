class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :content
      t.text :style
      t.integer :parent_id
      t.string :parent_type

      t.timestamps null: false
    end
  end
end
