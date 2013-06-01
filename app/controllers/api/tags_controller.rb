class Api::TagsController < ApplicationController

  def show
    articles = Article.tagged_with(params[:id]).page params[:page]
    locations = Location.tagged_with(params[:id])
    categories = []
    categories.append(articles.first.category.name,articles)
    render :json => {:success=>true,:tag => params[:id],:categories => categories,:locations => locations}
  end

end
