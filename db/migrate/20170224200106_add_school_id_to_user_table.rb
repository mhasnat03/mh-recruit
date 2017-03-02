class AddSchoolIdToUserTable < ActiveRecord::Migration
  def change
  	add_reference(:users, :school)
  end
end
