class RemoveWorkoutIdFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :workout_id
  end
end
