class RenameIndexonSignups < ActiveRecord::Migration
  def change
  	rename_index :signups, 'index_users_on_email', 'index_signups_on_email'
  end
end
