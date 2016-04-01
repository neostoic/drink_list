class DrinksController < ApplicationController
  before_action :find_drink, only: [:show, :edit, :update, :destroy]

  def index
    query = params[:q].presence || "*"
    @drinks = Drink.search(query, suggest: true, limit: 1000)

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

  def autocomplete
    render json: Drink.search(params[:term], fields: [{recipe_name: :text_start}], limit: 5).map { |d| d.recipe.name }.uniq
  end

  private

  def find_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :size, :price, :place_id, :alcohol_id, :recipe_id)
  end
end
