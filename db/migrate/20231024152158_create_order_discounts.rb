class CreateOrderDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :order_discounts do |t|
      t.references :order
      t.references :discount_code
      t.timestamps
    end
  end
end
