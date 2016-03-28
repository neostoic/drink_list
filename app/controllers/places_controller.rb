class PlacesController < ApplicationController
  before_action :find_place, except: [:index, :new]

  def show
  end

  def new
    @place = Place.new
  end

  def create
    if @place.save
      redirect_to @place, notice: "Success! Place saved."
    else
      render :new, notice: "Oops. Unable to save recipe."
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address_link)
  end
end
