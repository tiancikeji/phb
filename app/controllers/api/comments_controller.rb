class Api::CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.where(:user_id => params[:user_id])
    render :json => {:success => true , :comments => @comments} 
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      render :json => {:success => true, :comment => @comment } 
    else
      render :json => {:success => false, :comment => @comment, :errors => @comment.errors } 
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end
end
