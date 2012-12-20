class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	add_column :statuses, :user_id, :integer
  	ad_index :statuses, :user_id
  	remove_colum :statuses, :name	
  end
end
