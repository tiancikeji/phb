class Article < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  has_many :comments
  belongs_to :user
end
