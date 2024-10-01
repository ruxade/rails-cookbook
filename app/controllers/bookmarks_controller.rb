class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.cateory = @category
    if @bookmark.save
      redirect_to categories_path(@categories)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
