class AddExerciseIdToNumsets < ActiveRecord::Migration
  def change
    add_column :numsets, :exercise_id, :integer
  end
end
