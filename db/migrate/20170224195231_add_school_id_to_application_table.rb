class AddSchoolIdToApplicationTable < ActiveRecord::Migration
  def change
  	add_column(:applications, :school_id, :integer)
  end
end
