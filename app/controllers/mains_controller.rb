class MainsController < ApplicationController

  def index
    @movies = Movie.all.page(params[:page]).per(3)
  end
  
end
