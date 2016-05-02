class ExercisesWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts_exercises do |t|
      t.integer :workout_id
      t.integer :exercise_id
    end
  end
end
