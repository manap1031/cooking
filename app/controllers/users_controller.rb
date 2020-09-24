class UsersController < ApplicationController
 
  def show
    @cooks = Cook.includes(:user).order('created_at DESC')
    user = User.find(params[:id])
    @nickname = user.nickname
    @cooks = user.cooks
  end

end
