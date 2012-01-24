class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :order_id
      t.string :name
      t.float :price, :default => 0.0
      t.integer :quantity, :default => 1

      t.timestamps
    end
  end
end
