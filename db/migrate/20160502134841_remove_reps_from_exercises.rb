class RemoveRepsFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :reps, :string
    remove_column :exercises, :sets, :string
  end
end
