class AddUsernameToAuthenticatonis < ActiveRecord::Migration
  def change
    add_column :authentications, :username, :string, :limit => 64
  end
end
