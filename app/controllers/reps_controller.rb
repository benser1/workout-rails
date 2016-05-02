class RepsController < ApplicationController

  def new
    @rep = Rep.new
  end

  def create
    @rep = Rep.new(rep_params)
    @rep.save
  end

  private

  def rep_params
    params.require(:rep).permit(:number, :exercise_id)
  end

end
