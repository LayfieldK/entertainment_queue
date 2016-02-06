class EntertainmentItemsController < ApplicationController
  
  before_action :logged_in_user, only: [:create, :destroy, :edit, :update_row_order]
  before_action :correct_user,   only: [:destroy, :edit, :update_row_order]
  
  def new
    @entertainment_item = EntertainmentItem.new
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
      render 'new'
    end
  end
  
  def show
    set_entertainment_item
  end
  
  def destroy
    set_entertainment_item
    @entertainment_item.destroy
    
    redirect_to controller: 'users', action: 'show', id: @entertainment_item.user
  end
  
  def edit
    set_entertainment_item
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
      params.require(:entertainment_item).permit(:entertainment_item_id, :name, :description, :link, :row_order_position, :entertainment_item_type_id, :user)
      
    end
  
    def correct_user
      @entertainment_item = @current_user.entertainment_items.find_by(id: params[:id])
      redirect_to root_url if @entertainment_item.nil?
    end
end
