class CreatePizzaOrderIngRemoves < ActiveRecord::Migration[7.0]
  def change
    create_table :pizza_order_ing_removes do |t|
      t.references :pizza_order
      t.references :ingredient
      t.timestamps
    end
  end
end
