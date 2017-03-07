class Student < ActiveRecord::Base
	has_many(:applications)
		validates(:social, presence: true)
		validates(:first_name, presence: true)
		validates(:last_name, presence: true)
		validates(:email, presence: true)
		validates(:phone, presence: true)
		validates(:street, presence: true)
		validates(:city, presence: true)
		validates(:state, presence: true)
		validates(:zip_code, presence: true)
		validates(:dob, presence: true)
	
end
