class CooksController < ApplicationController
  def index
    @cooks = Cook.all
  end

  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new(cook_params)
    if @cook.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def cook_params
    params.require(:cook).permit(:recipe_name, :recipe, :image)
  end

end
