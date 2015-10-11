class UsersController < ApplicationController

  def show
  	@user = User.find_by(mobile: params[:mobile])
  end

  def new
  	@users = User.all
  end
  
end
