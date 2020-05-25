class BookmarksController < ApplicationController

  def index
    @user = current_user
    @bookmarks = Bookmark.where(user_id: @user.id).all
  end

  def show_clips
    @movie = Movie.find(params[:id])
    @bookmarks = Bookmark.where(movie_id: @movie.id).all
  end
  
  def create
    @user_id = current_user.id
    @movie_id = Event.find(params[:id]).id
    @bookmark = Bookmark.new(movie_id: @movie_id, user_id: @user_id)
      if @bookmark.save
        redirect_to user_path(current_user)
      end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      redirect_to user_path(current_user)
    end
  end
end
