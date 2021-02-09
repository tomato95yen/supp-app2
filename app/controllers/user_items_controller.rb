class UserItemsController < ApplicationController
  def index
  end

  def new
    @history = History.new
  end

  def create
    @history = History.new(history_params)
    if @history.valid?
      @history.save
      redirect_to root_path
    else
      render :new
    end
  end


    private
    def history_params
      params.permit(:item_id).merge(user_id: current_user.id)
    end
end
