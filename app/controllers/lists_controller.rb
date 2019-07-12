class ListsController < ApplicationController
  def index
    @lists = List.all
    policy_scope(List)
  end

  def new
    @list = List.new()
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    @list.save
  end


  def show
        @list = List.find(params[:id])

  end

  def edit
  end

  def update
  end

  def destroy
  end


end
