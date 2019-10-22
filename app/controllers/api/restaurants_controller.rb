module Api
    # module V1
        class  RestaurantsController < ApplicationController 
            def index
                    restaurants = Restaurant.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Loaded Restaurants', data:restaurants},status: :ok
                # render plain: "OK"
            end
            def show
                restaurant = Restaurant.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded Restaurant', data:restaurant},status: :ok
            end
        end
    # end
end
