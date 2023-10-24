# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
# pizzas = Pizza.create(pizzas_seed)
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
# ingredients = Ingredient.create(ingredients_seed)
promo_codes_seed = [
    {
        name:"2FOR1",
        description:"Buy 2 for the price of 1"
    }
]
# promo_codes = PromoCode.create(promo_codes_seed)
discount_codes_seed = [
    {
        name:"SAVE5",
        description:"Save 5 euro. Applicable on order of 10 euro or above."
    }
]
discount_codes = DiscountCode.create(discount_codes_seed)