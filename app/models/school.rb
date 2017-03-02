class School < ActiveRecord::Base
	has_many(:applications)
	has_many(:users)
	has_many :students, :through => :applications
end
