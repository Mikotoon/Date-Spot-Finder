class FavoritesController < ApplicationController
  # お気に入り追加
  def create
  @tweet = Tweet.find(params[:tweet_id])
  Favorite.create(user_id: current_user.id, tweet_id: @tweet.id)
  redirect_to request.referer
  end


  # お気に入り削除
  def destroy
  @tweet = Tweet.find(params[:tweet_id])
  favorite = Favorite.find_by(user_id: current_user.id, tweet_id: @tweet.id)
  favorite.destroy if favorite
  redirect_to request.referer
  end


  def show
  @user = User.find(params[:id])
  @favorites_list = @user.favorites.includes(:tweet)
  end
end
