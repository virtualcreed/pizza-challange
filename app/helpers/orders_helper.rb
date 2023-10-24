module OrdersHelper
    def pizza_order_ings_formatted(pizza_order_ingredients)
        result = []
        pizza_order_ingredients.each do |pizza_order_ingredient|
            result << pizza_order_ingredient.ingredient.name
        end
        result.join(", ")
    end
end
