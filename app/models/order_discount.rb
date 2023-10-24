class OrderDiscount < ApplicationRecord
    belongs_to :order
    belongs_to :discount_code
end
