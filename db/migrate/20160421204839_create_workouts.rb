class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
