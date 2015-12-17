class UsersController < ApplicationController

  def index
  	@users = User.all
  	respond_to do |k|
  		k.html
  		k.json { render json: @users }
  	end

  end
end
