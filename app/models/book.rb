class Book < ActiveRecord::Base
  attr_accessible :author, :cover, :description, :name, :url
  mount_uploader :cover, ImageUploader
end
