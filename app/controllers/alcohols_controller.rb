class AlcoholsController < ApplicationController
  before_action :find_alcohol, except: [:new, :create]

  def show
    @alcohol_drinks = @alcohol.drinks

    respond_to do |format|
      format.html
      format.json { render json: @alcohol_drinks }
      format.xml  { render xml:  @alcohol_drinks }
    end
  end

  def new
    @alcohol = Alcohol.new
  end

  def create
    @alcohol = Alcohol.new(alcohol_params)

    if @alcohol.save
      redirect_to @alcohol
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @alcohol.update(alcohol_params)
      redirect_to @alcohol
    else
      render :edit
    end
  end

  def destroy
    @alcohol.destroy
    redirect_to root_path
  end

  private

  def find_alcohol
    @alcohol = Alcohol.find(params[:id])    
  end

  def alcohol_params
    params.require(:alcohol).permit(:name)
  end
end
