class CreatePizzaOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :pizza_orders do |t|
      t.references :order
      t.references :pizza
      t.integer :size,default:1
      t.timestamps
    end
  end
end
