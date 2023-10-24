class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    def update
        order = Order.find params[:id]
        order.update(completed:true)
        redirect_to orders_url
    end
end
