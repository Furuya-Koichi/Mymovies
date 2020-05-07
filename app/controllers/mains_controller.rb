class MainsController < ApplicationController

  def index
    @movies = Movie.all
  end
  
end
