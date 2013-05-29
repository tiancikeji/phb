class Question < ActiveRecord::Base
  attr_accessible :description, :score, :sort, :title
end
