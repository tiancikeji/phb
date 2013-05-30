class Api::TagsController < ApplicationController

  def show
    articles = Article.tagged_with(params[:id]).page params[:page]
    locations = Location.tagged_with(params[:id])
    categories = {}
    articles.each do |article|
      # if categories.has_key? article.category.id
        article_array = []
        article_array.append(article) 
        categories.store(article.category.name,article_array)
      # end
    end
    render :json => {:success=>true,:tag => params[:id],:categories => categories,:locations => locations}
  end

end
