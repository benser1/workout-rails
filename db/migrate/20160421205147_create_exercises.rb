class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :reps
      t.string :sets

      t.timestamps null: false
    end
  end
end
