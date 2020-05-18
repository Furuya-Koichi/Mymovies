class Admin::AdminController < ApplicationController

  before_action :if_not_admin
  before_action :set_admin, only: [:show, :edit, :destroy]

  #中略

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_admin
    @movie = Movie.find(params[:id])
  end

end
