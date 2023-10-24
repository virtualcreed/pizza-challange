class OrderPromo < ApplicationRecord
    belongs_to :order
    belongs_to :promo_code
end
