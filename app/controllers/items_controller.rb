class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @category = Category.find(params[:category_id])
    @item = Item.new
  end

  def create
    @category = Category.find(params[:category_id])
    @item = @category.items.build(item_params)
      if @item.save
        redirect_to category_items_path
      else
        redirect_to new_category_item_path
      end
  end

private
  def item_params
    params.require(:item).permit(:name, :price, :description)
  end

end
