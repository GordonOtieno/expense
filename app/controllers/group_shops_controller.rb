class GroupShopsController < ApplicationController
  def new
    @shop = Shop.new
    @groups = Group.where(author_id: current_user.id)
  end

  def create
    shop = Shop.create(name: expense_params[:name], author_id: current_user.id, amount: expense_params[:amount])
    if shop.save
      GroupShop.create(shop_id: shop.id, group_id: params[:group])
      redirect_to group_path(params[:group]), notice: 'Expense created'
    else
      flash[:notice] = 'Error during creation'
    end
  end

  protected

  def expense_params
    params.require(:shop).permit(:name, :amount)
  end
end
