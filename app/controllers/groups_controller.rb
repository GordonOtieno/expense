class GroupsController < ApplicationController
  def index
    @groups = Group.where(author_id: current_user.id).includes(:group_expenses).order(created_at: :desc).limit(4)
    @name = current_user.name
  end

  def show
    @group = Group.find(params[:id])
    @group_expenses = GroupExpense.includes(:expense).where(group_id: @group).order(created_at: :desc)
    @total = 0
    @group_expenses.each { |e| @total += e.expense.amount }
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    @group.author_id = current_user.id

    if @group.save
      redirect_to root_path, notice: 'Categories Created Successfully!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def older_index
    @groups = Group.where(author_id: current_user.id).includes(:group_expenses).order(created_at: :asc)
  end

  protected

  def group_params
    params.require(:group).permit(:icon, :name)
  end
end
