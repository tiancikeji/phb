class AddFromToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :from, :string
  end
end
