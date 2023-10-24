class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null:false
      t.decimal :price, default:0
      t.timestamps
    end
  end
end
