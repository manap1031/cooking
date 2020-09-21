class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @cooks = current_user.cooks
  end

end
