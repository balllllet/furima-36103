class ItemsController < ApplicationController
  before_action :authenticate_user!, 
  # before_action :move_to_index, except: [:index, :show]
 def index
  
 end

 def new
  @item = Item.new
end

def create
  @item = Item.new(item_params)
  if @item.save
    redirect_to root_path
  else
    render :new
  end
end

 #def move_to_index
  #unless user_signed_in?
   #redirect_to action: :index
  #end
#end

def item_params
  params.require(:item).permit(:image, :name, :description, :category_id, :sales_status_id, :shipping_fee_status_id, :prefecture_id, :scheduled_delivery_id, :price).merge(user_id: current_user.id)
end
end
