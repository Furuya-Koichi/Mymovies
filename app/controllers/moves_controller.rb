class MovesController < ApplicationController
  def index
    @moves = Tweet.all
  end
end
