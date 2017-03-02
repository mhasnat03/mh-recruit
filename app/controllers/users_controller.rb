class UsersController < ApplicationController
	
	attr_accessor :students, :applications, :school

	PENDING_STATUS_ID = 2.freeze 
	
	def index
		@students = get_school.students
		@applications = get_school.applications.where(:status => PENDING_STATUS_ID)	
	end

	def show
		@application = Application.find(params[:id])
	end

	private 

	def get_school
		School.find(current_user.school.id)
	end

	

	def application_params
		params[:application].permit(:avatar, :school_id, :semester, :major, :fin_aid, :scholarships, :immunization, :gpa, :sat_score, :grad_date, :about)
	end

	def student_params
		params[:student].permit(:social, :first_name, :last_name, :email, :phone, :street, :city, :state, :zip_code, :dob)
	end
	
	
end