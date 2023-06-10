module Api
  module V1
    class OrdersController < ApplicationController

      def create
        posted_line_foods = LineFood.where(id: params[:line_food_ids])
        order = Order.new(
                          total_price: total_price(posted_line_foods)
                          binding.pry
      )
         
      end
    end
  end
end