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

  def destroy
    movies = Movie.find(params[:id])
    movies.destroy
    redirect_to root_path
  end

  def edit
    @movies = Movie.find(params[:id])
  end

  def update
    movies = Movie.find(params[:id])
    movies.update(movie_params)
    redirect_to root_path
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def search
    @movies = Movie.search(params[:keyword])
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :move, :note)
  end

end
