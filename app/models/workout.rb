class Workout < ActiveRecord::Base

  belongs_to :category
  has_many :workouts_exercises
  has_many :exercises, through: :workouts_exercises
  # has_many :reps, through: :exercises
  # has_many :numsets, through: :exercises

  accepts_nested_attributes_for :exercises, allow_destroy: true

end ## class end
