class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render :json => @users
  end

  def signin
    @user = User.find_for_database_authentication(:email => params[:user][:email])
    if @user
      p @user.encrypted_password
      if @user.valid_password?(params[:user][:password])
        render :json => {:user => @user,:status => "successfully"} 
      else
        render :json => {:status => "wrong password"} 
      end
    else
      render :json => {:status => "user not exist"} 
    end
  end

  def signup
    @user = User.new(params[:user])
    if @user.save
      render :json => {:status => "successfully"} 
    else
      render :json => {:status => "error"} 
    end
  end

  def show
    @user = User.find(params[:id])
    render :json => @user
  end

end
