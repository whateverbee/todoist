class ListsController < ApplicationController
  def index
    @lists = List.all 
  end

  def show 
    @list = List.find(params[:id])
  end

  def new 
    @list = List.new
  end

  def edit 
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.save 
      redirect_to @list 
    else
      render 'new'
    end
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
        redirect_to @list 
    else 
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to root
  end

  private

  def list_params
    params.require(:title).permit(:title)
  end
end
