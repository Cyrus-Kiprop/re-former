class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new(username: 'Cyrus Kiprop', email: 'cyruskiprop@gmail.com')
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    # @user = User.new(email: params[:email], username:params[:username], password: params[:password])

    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :username)
  end
end
