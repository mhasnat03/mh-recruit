class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
    	t.string(:semester, :major, :fin_aid, :scholarships, :immunization, :gpa, :sat_score, :grad_date, :about)

      t.timestamps null: false
    end
  end
end
