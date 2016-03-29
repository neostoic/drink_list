class DrinksController < ApplicationController
  before_action :find_drink, except: [:index, :new, :create]

  def index
    # @drink  = Drink.new
    @drinks = Drink.all.order("price asc")

    respond_to do |format|
      format.html
      format.json { render json: @drinks }
      format.xml  { render xml:  @drinks }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @drink }
      format.xml  { render xml:  @drink }
    end
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)

    if @drink.save
      redirect_to @drink
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @drink.update(drink_params)
      redirect_to @drink
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def find_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :price, :place_id, :alcohol_id, :recipe_id)
  end
end
