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
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :product, :explanation, :type_id, :status_id_id, :price, :delivaly_price_id, :prefecture_id, :ship_id).merge(user_id: current_user.id)
  end
end
