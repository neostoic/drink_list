class PlacesController < ApplicationController
  before_action :find_place, except: [:index, :new]

  def show
  end

  def new
    @place = Place.new
  end

  def create
    if @alcohol.save
      redirect_to alcohol_path(@alcohol.id)
    else
      render :new
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
