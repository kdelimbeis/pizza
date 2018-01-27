class CategoriesController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      redirect_to new_category_path
  end

end


private
  def category_params
    params.require(:category).permit(:name)
  end
end
