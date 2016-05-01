class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.text :name
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
