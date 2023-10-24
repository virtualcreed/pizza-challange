class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price, null:false, default:0
      t.boolean :completed, null:false, default:false
      t.timestamps
    end
  end
end
