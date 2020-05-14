class MainsController < ApplicationController

  def index
    @movies = Movie.all.page(params[:page]).per(3).order("created_at DESC")
  end
  
end
