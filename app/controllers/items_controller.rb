class ItemsController < ApplicationController
  before_action :set_list

  def index
    @items = Item.where(list_id: @list)
    policy_scope(Item)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    authorize @item
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def item_params
    params.require(:item).permit(:item_name)
  end
end
