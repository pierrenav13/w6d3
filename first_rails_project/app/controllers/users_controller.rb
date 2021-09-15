class UsersController < ApplicationController
  # Controllers are ALWAYS plural
  # Boot up server with the command: bundle exec rails server or s

  def index
    @users = User.all
    render json: @users
  end

  # params method that returns a hash or all params available

  # render json: automatically calls the to_json method
  def create
    user = User.new(params.require(:user).permit(:name, :email))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end

  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_url(@user)
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to user_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end


end