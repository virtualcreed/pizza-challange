class Order < ApplicationRecord
    has_many :order_discounts
    has_many :order_promos
    has_many :pizza_orders
end
