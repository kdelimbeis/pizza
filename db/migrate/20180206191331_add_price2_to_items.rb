class AddPrice2ToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :price2, :decimal, precision: 5, scale: 2
  end
end
