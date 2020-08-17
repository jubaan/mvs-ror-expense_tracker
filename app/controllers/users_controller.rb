class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def show
    unless current_user == @user # rubocop:disable Style/GuardClause
      flash[:notice] = 'Access restricted!'
      redirect_to user_path(current_user)
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit, alert: 'Something went wrong. Try again.'
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :image, :email, :password)
  end
end
