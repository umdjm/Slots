class Course < ActiveRecord::Base
  attr_accessible :title, :user_id
  has_many :students
  belongs_to :user
end
