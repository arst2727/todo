class User::ListsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @lists = current_user.list.all
  end
  
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      
    else
      render 'new'
    end
  end

  def destroy
  end

  def edit
  end
  
  def update
  end
  
  private

  def list_params
    params.require(:list).permit(:content, :user_id)
  end
end
