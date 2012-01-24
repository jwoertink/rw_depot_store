class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number

      t.timestamps
    end
  end
end
