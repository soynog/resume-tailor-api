class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :section, index: true, foreign_key: true
      t.references :version, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
