class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
  end

  def edit
    @list = List.find(params[:id])
  end

  private
  def list_params
    params.requre(:list).permit(:name, :movies)

end
