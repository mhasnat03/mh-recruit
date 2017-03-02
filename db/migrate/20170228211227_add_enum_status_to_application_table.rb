class AddEnumStatusToApplicationTable < ActiveRecord::Migration
  def change
  		add_column(:applications, :status, :integer, default: 2)  		
  end
end
