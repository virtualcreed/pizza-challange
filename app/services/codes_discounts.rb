module CodesDiscounts
    # promo parts
    def apply_promo_code order
        #TBD
    end
    
    # discount parts
    ## apply_discount_code returns the percentage value of discount
    def apply_discount_code order
        result = 0
        order.order_discounts.each do |order_discount|
            if order_discount.discount_code.name == "SAVE5"
                result = result + save_five_discount
            elsif order_discount.discount_code.name == "SAVE10"
                result = result + save_ten_discount
            end
        end
        result
    end
    private
    def save_five_discount
        0.05
    end
    def save_ten_discount
        0.10
    end
end