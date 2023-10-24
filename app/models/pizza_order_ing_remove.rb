class PizzaOrderIngRemove < ApplicationRecord
    belongs_to :pizza_order
    belongs_to :ingredient
end
