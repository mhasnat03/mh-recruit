class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	
    	t.string(:social, :first_name, :last_name, :email, :phone, :street, :city, :state, :zip_code, :dob)

      t.timestamps null: false
    end
  end
end
