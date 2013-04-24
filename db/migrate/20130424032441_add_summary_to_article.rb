class AddSummaryToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :summary, :string
    add_column :articles, :cover, :string
  end
end
