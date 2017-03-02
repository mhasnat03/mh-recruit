class AddSchoolToApplicationTable < ActiveRecord::Migration
  def change
  	remove_column(:applications, :school_id)
  end
end
