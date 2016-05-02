class NumsetsController < ApplicationController

  def new
    @numset = Numset.new
  end

  def create
    @numset = Numset.new(numset_params)
    @numset.save
  end

  private

  def numset_params
    params.require(:numset).permit(:number, :exercise_id)
  end


end ## class end
