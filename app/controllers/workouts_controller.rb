class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new # GET /workouts/new - just presents the form to the user
    @workout = Workout.new  ## this instantiates a new workout object
  end

  def create  # POST /workouts - processes the form
    @workout = Workout.new(workout_params)
    # binding.pry
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
    params.require(:workout).permit(:title, :category_id, exercises_attributes: [:id, :name, :_destroy, reps_attributes: [:number], numsets_attributes: [:number]])
  end


end ## class end
