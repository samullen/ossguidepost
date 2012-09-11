class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :user
      t.string :name, :null => false, :limit => 64
      t.string :full_name, :null => false, :limit => 128
      t.text :description
      t.string :git_url
      t.string :homepage
      t.string :language, :limit => 32
      t.integer :score, :null => false, :default => 0

      t.timestamps
    end

    add_index :projects, :user_id
    add_index :projects, :name
  end
end
