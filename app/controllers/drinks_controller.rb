class DrinksController < ApplicationController
  before_action :find_drink, except: [:index, :new]

  def index
    @drinks = Drink.all
  end

  def show
  end

  def new
    @drink = Drink.new
  end

  def create
    if @drink.save
      redirect_to drink_path(@drink.id)
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

  def find_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :price, :place_id, :alcohol_id)
  end
end
