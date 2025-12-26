class TweetsController < ApplicationController
before_action :authenticate_user!
  def index
    @tweets= Tweet.all
    search = params[:search]
    @tweets = @tweets.joins(:user).where("body LIKE ?", "%#{search}%") if search.present?
    @tweets = @tweets.page(params[:page]).per(3)
      if params[:tag_ids]
      tag_names = params[:tag_ids].select { |_k, v| v == "1" }.keys
      tags = Tag.where(name: tag_names)
      @tweets = @tweets.joins(:tags).where(tags: { id: tags.ids }).distinct
      end

      if params[:tag]
      Tag.create(name: params[:tag])
      end

    @rank_tweets = Tweet.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)

    tweet.user_id = current_user.id

    if tweet.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments
    @comment = Comment.new
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to action: "show", id: tweet.id
    else
      redirect_to action: "new"
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :image, :star, :title, :price, :place, :time, :map, tag_ids: [])
  end
end
