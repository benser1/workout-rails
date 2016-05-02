class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @exercise.save
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)
  end

  def delete
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, reps_attributes: [:id, :number, :_destroy], numsets_attributes: [:id, :number, :_destroy])
  end



end ## class end
