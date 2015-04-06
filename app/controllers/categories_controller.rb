class CategoriesController < ApplicationController

  def index
    @categories = Category.all
 end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    if @category = Category.find_or_create_by(category_params)
      redirect_to @category
    else
      render 'new'
    end
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end

end
