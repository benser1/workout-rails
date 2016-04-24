class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new  ## this instantiates a new workout object
  end

  def create  ## this saves the new workout object
    @workout = Workout.new(workout_params)
    @workout.category_id = params[:category_id]
    @workout.save

    redirect_to workouts_path
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)

    redirect_to workouts_path
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to workouts_path
  end

  private

  def workout_params
    params.require(:workout).permit(:title, :category_id, exercises_attributes: [:id, :name, :reps, :sets, :_destroy])
  end


end ## class end
