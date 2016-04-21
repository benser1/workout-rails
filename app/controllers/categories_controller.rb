class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(params[:id])
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end

  def edit
    @category = Category.find_by(params[:id])
  end

  def update
    @category = Category.find_by(params[:id])
    @category.update(category_params)
  end

  def delete
    @category = Category.find_by(params[:id])
    @category.destroy
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end



end ## class end
