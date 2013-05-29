class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @articles = Article.tagged_with(params[:id]).page params[:page]
    @locations = Location.tagged_with(params[:id])
    @tag_name = params[:id]
  end

end
