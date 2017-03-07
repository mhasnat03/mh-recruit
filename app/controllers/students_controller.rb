class StudentsController < ApplicationController 

	
		def new
			@student = Student.new
		end

		def create 
			@student = Student.create(student_params)

			if @student.save
				flash[:notice] = 'Application was succesfully submitted'
				
			else
				flash.now[:error] = 'An error prevented the application from being submitted'
				render 'application/new'
			end

		end


	private 

		def student_params
			params[:student].permit(:social, :first_name, :last_name, :email, :phone, :street, :city, :state, :zip_code, :dob)
		end

end