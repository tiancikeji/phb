class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new  
  end

  def create
    @tag = Tag.new(params[:tag]) 
    if @tag.save
      redirect_to tags_url, notice: 'Tag was successfully created.' 
    else
      render action: "new"
    end
  end

  def show
    @articles = Article.tagged_with(params[:id]).page params[:page]
    @locations = Location.tagged_with(params[:id])
    @tag_name = params[:id]
  end

  def destroy
    @tag = Tag.find(params[:id]) 
    @tag.destroy
    redirect_to tags_url, notice: 'Tag was successfully removed.' 
  end
end
