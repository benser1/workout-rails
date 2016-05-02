class RepsController < ApplicationController

  def create
    @rep = Rep.new(rep_params)
    @rep.save
  end

  def edit
    @rep = Rep.find(params[:id])
  end

  def update
    @rep = Rep.find(params[:id])
    @rep.update(rep_params)
  end

  def destroy
    @rep = Rep.find(params[:id])
    @rep.destroy
  end

  private

  def rep_params
    params.require(:rep).permit(:number)
  end

end
