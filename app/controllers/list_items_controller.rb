class ListItemsController < ApplicationController
  before_action :set_list

  def create 
    @list_item = @list.list_items.create(list_item_params)
    redirect_to @list
  end

  private

  def set_list 
    @list = List.find(params[:list_id])
  end

  def list_item_params
    params[:list_item].permit(:content)
  end
end
