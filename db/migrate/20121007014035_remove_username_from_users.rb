class RemoveUsernameFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :username
  end

  def down
    add_column :users, :username, :string, :limit => 64
  end
end
