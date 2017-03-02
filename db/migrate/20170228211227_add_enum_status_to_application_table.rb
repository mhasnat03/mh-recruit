class AddEnumStatusToApplicationTable < ActiveRecord::Migration
  def change
  		remove_column(:applications, :status)
  		add_column(:applications, :status, :integer, default: 2)
  		
  end
end
