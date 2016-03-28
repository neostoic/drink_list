class AlcoholsController < ApplicationController
  before_action :find_alcohol, except: [:new]

  def show
  end

  def new
    @alcohol = Alcohol.new
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

  def find_alcohol
    @alcohol = Alcohol.find(params[:id])    
  end

  def alcohol_params
    params.require(:alcohol).permit(:name)
  end
end
