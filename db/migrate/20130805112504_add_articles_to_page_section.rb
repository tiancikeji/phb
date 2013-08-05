class AddArticlesToPageSection < ActiveRecord::Migration
  def change
    add_column :page_sections, :articles, :string
  end
end
