class Order < ApplicationRecord
    has_many :promo_codes
    has_many :discount_codes
    has_many :pizza_orders
end
