class OrderCreator
    include CodesDiscounts
    attr_accessor :total_pizza_price,:total_ingredients_price,:total_final_price
    def initialize order
        @order = order
        @total_pizza_price = 0
        @total_ingredients_price = 0
    end

    def get_final_price
        self.calculate_pizza_price
        self.calculate_ingredients_price
        @total_final_price = @total_pizza_price + @total_ingredients_price
        @total_final_price = @total_final_price - (@total_final_price * self.apply_discount_code(@order))
    end
    def calculate_pizza_price
        @order.pizza_orders.each do |pizza_order|
            pizza_price = pizza_order.pizza.price * PizzaOrder.sizes[pizza_order.size]
            @total_pizza_price = @total_pizza_price + pizza_price
        end
    end
    def calculate_ingredients_price
        @order.pizza_orders.each do |pizza_order|
            pizza_order.pizza_order_ing_adds.each do |ing|
                ing_price = ing.ingredient.price * PizzaOrder.sizes[pizza_order.size]
                @total_ingredients_price = @total_ingredients_price + ing_price
            end
        end
    end
end