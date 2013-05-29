class Location < ActiveRecord::Base
  attr_accessible :address, :description, :lat, :lng, :name, :phone, :user_comment, :tag_list
  acts_as_taggable
end
