class RecipesController < ApplicationController
  before_action :find_recipe, except: [:new, :create]

  def show
    @recipe_drinks = @recipe.drinks

    respond_to do |format|
      format.html
      format.json { render json: @recipe_drinks }
      format.xml  { render xml:  @recipe_drinks }
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :image)
  end
end