class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
  end

  private
  def item_params
    params.require(:item).permit(:iamge, :name, :explanation, :category_id, :price)
  end
end
