class AddSeekingMaintainerSinceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :seeking_maintainer_since, :datetime
    add_index :projects, :seeking_maintainer_since
  end
end
