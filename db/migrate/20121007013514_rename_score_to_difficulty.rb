class RenameScoreToDifficulty < ActiveRecord::Migration
  def up
    rename_column :projects, :score, :difficulty
  end

  def down
    change_column :projects, :difficulty, :score
  end
end
