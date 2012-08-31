class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.belongs_to :user
      t.string :provider, :null => false
      t.string :uid, :null => false
      t.string :token, :null => false

      t.timestamps
    end

    add_index :authentications, :user_id 
    add_index :authentications, :uid, :unique => true
    add_index :authentications, :token, :unique => true
  end
end
