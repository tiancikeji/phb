class Babycard < ActiveRecord::Base
  attr_accessible :birthday, :blood_type, :color, :father_phone, :gender, :mather_phone, :name, :note, :record, :user_id
  belongs_to :user
end
