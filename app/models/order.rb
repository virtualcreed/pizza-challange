class Order < ApplicationRecord
    has_many :promo_codes
    has_many :order_discounts
    has_many :order_promos
end
