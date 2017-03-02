class AddStudentIdColumnToApplicationTable < ActiveRecord::Migration
  def change
  	add_reference(:applications, :student)
  end
end
