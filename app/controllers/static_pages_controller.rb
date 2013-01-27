class StaticPagesController < ApplicationController
	def home
		if current_user
			@courses = @current_user.courses
		end
	end
end
