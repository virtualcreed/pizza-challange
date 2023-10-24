class PizzaOrder < ApplicationRecord
    belongs_to :order
    belongs_to :pizza
    has_many :pizza_order_ing_adds
    has_many :pizza_order_ing_removes
    enum size:{small:1,medium:2,large:3}
end
