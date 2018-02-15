class AddPrice3ToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :price3, :decimal, precision: 5, scale: 2
  end
end
