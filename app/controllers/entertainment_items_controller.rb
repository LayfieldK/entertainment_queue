class EntertainmentItemsController < ApplicationController
  
  def new
    @entertainment_item_types = EntertainmentItemType.all
  end
  
  def update_row_order
    @entertainment_item = EntertainmentItem.find(entertainment_item_params[:entertainment_item_id])
    @entertainment_item.row_order_position = entertainment_item_params[:row_order_position]
    @entertainment_item.save
    
    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end
  
  def create
    @entertainment_item = current_user.entertainment_items.build(entertainment_item_params)
    if @entertainment_item.save
      flash[:success] = "Item added!"
      redirect_to root_url
    else
      redirect_to root_path
    end
  end
  
  def show
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entertainment_item
      @entertainment_item = EntertainmentItem.find(params[:id])
    end
    def entertainment_item_params
      #if (params[:entertainment_item].has_key?(:entertainment_item_type_id))
      #  params[:entertainment_item][:entertainment_item_type] = EntertainmentItemType.find(params[:entertainment_item][:entertainment_item_type_id])
      #end
      params.require(:entertainment_item).permit(:entertainment_item_id, :name, :description, :row_order_position, :entertainment_item_type_id, :user)
      
   end
end
