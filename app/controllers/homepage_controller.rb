class HomepageController < ApplicationController 
	
	def index
		@school = School.all
		if current_user.present?
			redirect_to(users_path)
		end
	end
end
