class PageSection < ActiveRecord::Base
  attr_accessible :index, :name, :page_id, :articles
  belongs_to :page

  def article_array
    if self.articles
      Article.find self.articles.split(',')
    else
      [] 
    end
  end

end
