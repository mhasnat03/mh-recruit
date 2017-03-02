class AddSchoolToApplicationTableNow < ActiveRecord::Migration
  def change
  	  	add_reference(:applications, :school)

  end
end
