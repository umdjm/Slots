class Student < ActiveRecord::Base
  attr_accessible :course_id, :name, :image, :remote_image_url
  belongs_to :course
  before_create :default_name

  mount_uploader :image, ImageUploader

	def default_name
	  self.name ||= File.basename(image.filename, '.*').titleize if image
	end
end
