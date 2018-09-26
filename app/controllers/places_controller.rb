class PlacesController < ApplicationController
  
  def index
    @places = Place.order("name").page(params[:page]).per_page(4)
  end

  def new
    @place = Place.new
  end

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

end