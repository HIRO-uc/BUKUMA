class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :current_path_user
  before_action :move_to_top

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  private
  def current_path_user
    @user = User.find(params[:id])
  end

  def move_to_top
    redirect_to root_path if @user.id != current_user.id
  end
end
