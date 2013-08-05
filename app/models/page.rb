class Page < ActiveRecord::Base
  attr_accessible :index, :name, :pageSections_attributes
  has_many :pageSections
  accepts_nested_attributes_for :pageSections, :allow_destroy => true
end
