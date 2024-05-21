class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/:id
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  # params[:restaurnt] = { name:..., rating:..., address:...}
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  # GET /restaurants/:id
  def edit
  end

  # PATCH /restaurants/:id
  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  # DELETE /restaurants/:id
  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # strong params
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
