class ListItemsController < ApplicationController
  def create 
    @list = List.find(params[:list_id])
    @item = @list.list_items.create(item_params)
    redirect_to list_path(@list)
  end

  def update 
  end

  def delete 
  end

  private
    def item_params
      params.require(:title).permit(:title)
    end
  end
end
