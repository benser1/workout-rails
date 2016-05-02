class NumsetsController < ApplicationController
  #
  # def new
  #   @numset = Numset.new
  # end

  def create
    @numset = Numset.new(numset_params)
    @numset.save
  end

  def edit
    @numset = Numset.find(params[:id])
  end

  def update
    @numset = Numset.find(params[:id])
    @numset.update(numset_params)
  end

  def destroy
    @numset = Numset.find(params[:id])
    @numset.destroy
  end

  private

  def numset_params
    params.require(:numset).permit(:number)
  end


end ## class end
