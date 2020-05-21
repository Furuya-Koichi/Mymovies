class BookmarksController < ApplicationController
  def create
    bookmark = current_user.bookmarks.build(movie_id: params[:movie_id])
    bookmark.save!
    redirect_to root_path, success: t('.flash.bookmark')
  end

  def destroy
    current_user.bookmarks.find_by(movie_id: params[:movie_id])
    redirect_to root_path, success: t('.flash.not_bookmark')
  end
end
