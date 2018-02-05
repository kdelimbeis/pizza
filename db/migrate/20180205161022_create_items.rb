class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 5, scale: 2
      t.integer :category_id

      t.timestamps
    end
  end
end
