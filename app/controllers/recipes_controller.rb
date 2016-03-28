class RecipesController < ApplicationController
  before_action :find_recipe, except: [:new]

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    if @recipe.save
      redirect_to @recipe, notice: "Success! Recipe saved."
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

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name)
  end
end