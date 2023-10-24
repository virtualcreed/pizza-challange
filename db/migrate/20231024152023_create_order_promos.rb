class CreateOrderPromos < ActiveRecord::Migration[7.0]
  def change
    create_table :order_promos do |t|
      t.references :order
      t.references :promo_code
      t.timestamps
    end
  end
end
