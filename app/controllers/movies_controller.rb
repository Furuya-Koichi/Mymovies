class MoviesController < ApplicationController

  before_action :set_movie, only: [:edit, :show]

  def index

  end

  def new
    @movies = Movie.new
  end
  
  def create
    # binding.pry
    @movies = Movie.create(movie_params)
    url = @movies.youtube_url
    url = url.last(11)
    @movies.youtube_url = url
    redirect_to root_path
  end

  def destroy
    movies = Movie.find(params[:id])
    movies.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    movies = Movie.find(params[:id])
    movies.update(movie_params)
    redirect_to root_path
  end

  def show
  end

  def search
    # binding.pry
    @movies = Movie.search(params[:keyword])
    @movies = Movie.all.page(params[:page]).per(3).order("created_at DESC")
  end

  # def bookmarks
  #   @movies = current_user.bookmark_movies.includes(:user).recent
  # end

  private
  def movie_params
    params.require(:movie).permit(:title, :youtube_url, :note, :move)
  end

  def set_movie
    @movies = Movie.find(params[:id])
  end

end
