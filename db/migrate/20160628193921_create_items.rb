class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :list, index: true, foreign_key: true
      t.string :description
      t.boolean :completed, default: false 

      t.timestamps null: false
    end
  end
end
