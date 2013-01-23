class Student < ActiveRecord::Base
  attr_accessible :course_id, :name, :image, :remote_image_url
  belongs_to :course

  mount_uploader :image, ImageUploader
end
