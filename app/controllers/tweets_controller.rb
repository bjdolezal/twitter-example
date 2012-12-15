class TweetsController < ApplicationController
  def new
  end

  def create
    redirect_to root_path unless user_signed_in?

    @tweet = Tweet.new(params[:tweet])

    @tweet.user = current_user
    @tweet.save

    redirect_to tweets_list_path
  end

  def show
  end

  def list
    @tweets = Tweet.all
  end

  def delete
    @tweet = Tweet.find(params[:format].to_i)
    @tweet.destroy

    redirect_to tweets_list_path
  end
end
