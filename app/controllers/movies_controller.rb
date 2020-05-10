class MoviesController < ApplicationController

  def index
    
  end

  def new
    @movies = Movie.new
  end
  
  def create
    Movie.create (movie_params)
    redirect_to root_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :move, :note)
  end

end