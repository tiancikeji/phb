class Api::SearchController < ApplicationController
  def index 
    articles = Article.where("title like '%"+params[:term]+"%'")
    # locations = Location.tagged_with(params[:id])
    categories = {}
    categories.store(articles.first.category.name,articles)
    render :json => {:success=>true,:categories => categories}
  end

  def keywords
    render :json => {:success => true ,:keywords => ['aa','bb','cc']} 
  end
end
