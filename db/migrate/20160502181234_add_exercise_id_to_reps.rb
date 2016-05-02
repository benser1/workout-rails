class AddExerciseIdToReps < ActiveRecord::Migration
  def change
    add_column :reps, :exercise_id, :integer
  end
end
