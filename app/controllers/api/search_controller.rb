class Api::SearchController < ApplicationController
  def index 
    render :json => {:success => true}
  end

  def keywords
    render :json => {:success => true ,:keywords => ['aa','bb','cc']} 
  end
end
