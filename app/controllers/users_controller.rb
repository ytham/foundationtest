class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
#      respond_to do |format|
#        format.html
#      end
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

end
