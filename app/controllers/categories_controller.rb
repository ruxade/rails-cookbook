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
      redirect_to category_path(@category)
    else
      render :new, status: :unproccessable_entity
    end
  end

  def destroy
    @category = Categoty.find(params[:id])
    @category.destroy
    # redirect_to categories_path, notice: 'category was deleted'
    redirect_to categories_path, status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:name)

  end
end
