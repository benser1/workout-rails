class Exercise < ActiveRecord::Base


  has_many :workouts_exercises
  has_many :workouts, through: :workouts_exercises
  has_many :reps
  has_many :numsets

  accepts_nested_attributes_for :reps, allow_destroy: true
  accepts_nested_attributes_for :numsets, allow_destroy: true


end
