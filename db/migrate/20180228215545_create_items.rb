class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :body
      t.integer :price
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
