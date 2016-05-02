class CreateNumsets < ActiveRecord::Migration
  def change
    create_table :numsets do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end
