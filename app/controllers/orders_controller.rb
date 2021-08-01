class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_item_id

  def index
    if @item.order.present?  ||  @item.user_id == current_user.id
      redirect_to root_path
    else
      @order = OrderAddress.new
    end
  end
  
  def create
    @order = OrderAddress.new(order_address_params)
        if  @order.valid?
            @order.save
            Payjp.api_key = "sk_test_45eba054a0e7839e1b0ebb99" 
            Payjp::Charge.create(
            amount: @item.price,
            card: params[:token],    
            currency: 'jpy'                 
          )

          redirect_to root_path
        else
          render :index
        end
  end

  def order_address_params
    params.require(:order_address).permit(:post, :prefecture_id, :city, :address, :building, :tel).merge(user_id: current_user.id, token: params[:token], item_id: params[:item_id])
  end
 
  private
   def find_item_id
    @item = Item.find(params[:item_id])
   end

end

