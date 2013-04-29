class Article < ActiveRecord::Base
  paginates_per 10
  attr_accessible :content, :title, :user_id, :category_id, :summary, :cover, :from
  has_many :comments
  belongs_to :user
  belongs_to :category
  mount_uploader :cover, ImageUploader
end
