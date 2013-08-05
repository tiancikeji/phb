class PageSection < ActiveRecord::Base
  attr_accessible :index, :name, :page_id
  belongs_to :page
end
