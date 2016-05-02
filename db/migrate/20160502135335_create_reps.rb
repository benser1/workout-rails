class CreateReps < ActiveRecord::Migration
  def change
    create_table :reps do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end
