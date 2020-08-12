class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]

  def index
    cookies[:original_referrer] = groups_path
    @groups = Group.includes([:expense, :user]).limit(10)
  end

  def show
    cookies[:original_referrer] = group_path
    @icon = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  def update
    if @group.update(group_params)
      redirect_to cookies[:original_referrer],
                  notice: 'Expense was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_url, notice: 'Group was successfully destroyed.'
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :icon, :region)
  end
end
