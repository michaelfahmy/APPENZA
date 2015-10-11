class UsersController < ApplicationController

  def show
  	@user = User.find_by(mobile: params[:mobile])
  end

end
