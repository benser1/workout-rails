class Workout < ActiveRecord::Base

  belongs_to :category
  has_many :workouts_exercises
  has_many :exercises, through: :workouts_exercises
  belongs_to :user

  accepts_nested_attributes_for :exercises, allow_destroy: true

end ## class end
