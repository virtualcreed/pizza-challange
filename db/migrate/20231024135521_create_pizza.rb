class CreatePizza < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :name,null:false
      t.decimal :price,null:false,default:0
      t.timestamps
    end
  end
end
