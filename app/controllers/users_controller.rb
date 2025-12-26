class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorites_list = @user.favorite_tweets
  end
end
