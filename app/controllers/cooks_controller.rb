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

  def show
    @cook = Cook.find(params[:id])
  end

  def edit
    @cook = Cook.find(params[:id])
  end

  def destroy
   if cook = Cook.find(params[:id])
    cook.destroy
    redirect_to root_path
   else
    render :show
   end
  end

  private

  def cook_params
    params.require(:cook).permit(:recipe_name, :recipe, :image)
  end

end
