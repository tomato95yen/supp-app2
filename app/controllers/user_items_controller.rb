class UserItemsController < ApplicationController
  def index
  end

  def new
    @history = History.new
  end

  def show
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    card = Card.find_by(user_id: current_user.id)

    redirect_to new_card_path and return unless card.present?

    customer = Payjp::Customer.retrieve(card.customer_token)
    @card = customer.cards.first
  end

  def create
    @item = Item.find(params[:item_id])
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
      params.permit(:item_id).merge(user_id: current_user.id, token: params[:token])
    end
end
