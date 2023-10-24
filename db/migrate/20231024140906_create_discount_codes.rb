class CreateDiscountCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :discount_codes do |t|
      t.string :name, null:false, default:""
      t.text :description, null:false, default:""
      t.timestamps
    end
  end
end
