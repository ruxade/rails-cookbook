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
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category), notice: 'Category was successfully created.'
    else
      render :new, status: :unprocessable_entity #
    end
  end

  def destroy
    @category = Category.find(params[:id]) #
    @category.destroy
    redirect_to categories_path, notice: 'Category was deleted.', status: :see_other # Added a notice
  end

  private

  def category_params
    params.require(:category).permit(:name, :photo)

  end
end
