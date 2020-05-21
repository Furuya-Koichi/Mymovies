class MainsController < ApplicationController

  def index
    @movies = Movie.all.page(params[:page]).per(3).order("created_at DESC")
  end

  def bookmarks
    @movies = current_user.bookmark_movies.includes(:user).recent
  end
  
end
