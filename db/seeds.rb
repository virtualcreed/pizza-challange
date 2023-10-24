
pizzas_seed = [
    {
        name:"Tonno",
        price:10
    },
    {
        name:"Margherita",
        price:20.5
    },
    {
        name:"Salami",
        price:4.20
    }
]
pizzas = Pizza.create(pizzas_seed)
ingredients_seed = [
    {
        name:"Onions",
        price:1
    },
    {
        name:"Cheese",
        price:0.2
    },
    {
        name:"Olives",
        price:0.5
    }
]
ingredients = Ingredient.create(ingredients_seed)
promo_codes_seed = [
    {
        name:"2FOR1",
        description:"Buy 2 for the price of 1"
    }
]
promo_codes = PromoCode.create(promo_codes_seed)
discount_codes_seed = [
    {
        name:"SAVE5",
        description:"Save 5 euro. Applicable on order of 10 euro or above."
    }
]
discount_codes = DiscountCode.create(discount_codes_seed)

order = Order.create
pizza = Pizza.first
pizza_order = PizzaOrder.create(order:order,pizza:pizza)
PizzaOrder.create(order:order,pizza:Pizza.second)
PizzaOrderIngAdd.create(pizza_order:pizza_order,ingredient:Ingredient.first)
PizzaOrderIngAdd.create(pizza_order:pizza_order,ingredient:Ingredient.second)
PizzaOrderIngRemove.create(pizza_order:pizza_order,ingredient:Ingredient.third)
