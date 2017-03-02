class ApplicationsController < ApplicationController 
	attr_accessor :application 

	def new 
		
		@application = Application.new(:school_id => params[:school][:name] )
		@student = Student.new
	end 

	def create 
		@student = Student.create(student_params)
		@application = @student.applications.create(application_params) 
		

		if @student.valid? && @application.valid? 
			flash[:notice] = 'Application was succesfully submitted'
		else
			flash.now[:error] = 'An error prevented the application from being submitted'
			render :new
		end

	end

	def show
		@application = Application.find(params[:id])
	end

	def accept 
		@application = Application.find(params[:id])
		application.status = :accepted 
		application.save
		redirect_to '/users'
	end

	def reject
		@application = Application.find(params[:id])
		application.status = :rejected  
		application.save
		redirect_to '/users'
	end

	private 

	def application_params
		params[:application].permit(:status, :other_document, :recommendation, :transcript, :avatar, :school_id, :semester, :major, :fin_aid, :scholarships, :immunization, :gpa, :sat_score, :grad_date, :about)
	end

	def student_params
		params[:student].permit(:social, :first_name, :last_name, :email, :phone, :street, :city, :state, :zip_code, :dob)
	end



end