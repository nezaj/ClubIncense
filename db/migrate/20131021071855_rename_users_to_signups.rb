class RenameUsersToSignups < ActiveRecord::Migration
  def change
  	rename_table :users, :signups
  end
end
