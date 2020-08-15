class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]

  def index
    cookies[:original_referrer] = groups_path
    @groups = Group.includes(%i[expense user]).limit(10)
    @collection = Group.all.uniq
  end

  def show
    cookies[:original_referrer] = group_path
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render :new, alert: 'Something went wrong. Try again.'
    end
  end

  def update
    if @group.update(group_params)
      redirect_to cookies[:original_referrer],
                  notice: 'Expense was successfully updated.'
    else
      render :edit, alert: 'Something went wrong. Try again.'
    end
  end

  def destroy
    @group.destroy
    if @user.destroy
      redirect_to groups_url, notice: 'Group was successfully destroyed.'
    else
      render :edit, alert: 'Something went wrong. Try again.'
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :icon, :region)
  end
end
