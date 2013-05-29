class Api::TagsController < ApplicationController

  def show
    @articles = Article.tagged_with(params[:id]).page params[:page]
    @locations = Location.tagged_with(params[:id])
    render :json => {:tag => params[:id],:articles => @articles,:locations => @locations}
  end

end
