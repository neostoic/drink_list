class PlacesController < ApplicationController
  before_action :find_place, except: [:index, :new, :create]

  def show
    @place_drinks = @place.drinks

    respond_to do |format|
      format.html
      format.json { render json: @place_drinks }
      format.xml  { render xml:  @place_drinks }
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      redirect_to @place
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to @place
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to root_path
  end

  private

  def find_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address_link)
  end
end
