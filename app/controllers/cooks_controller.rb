class CooksController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @cooks = Cook.includes(:user).order('created_at DESC')
  end

  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new(cook_params)
    if @cook.valid?
      @cook.save
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

  def update
    @cook = Cook.find(params[:id])
    if @cook.update(cook_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if cook = Cook.find(params[:id])
      cook.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def search
    @cooks = Cook.search(params[:keyword])
  end

  private

  def cook_params
    params.require(:cook).permit(:recipe_name, :recipe, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
