class Api::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    render :json => @user.to_json,:callback => params[:callback]
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      render :json => {:success => true,:user => @user}
    else
      render :json => {:success => false,:user => @user, :errors => @user.errors}
    end
  end

end
