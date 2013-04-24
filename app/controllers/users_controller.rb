class UsersController < ApplicationController

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(params[:user])     

    if @user.save
      redirect_to '/users', notice: 'successfully'
    else
      render 'new'
    end

  end

  def show
    @user = User.find(params[:id])
  end

end
