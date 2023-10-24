class CreatePromoCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :promo_codes do |t|
      t.string :name, null:false, default:""
      t.text :description, null:false, default:""
      t.timestamps
    end
  end
end
