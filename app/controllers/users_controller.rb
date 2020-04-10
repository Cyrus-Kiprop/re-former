class UsersController < ApplicationController
  def new
    @user = User.new(username: 'Cyrus Kiprop', email: 'cyruskiprop@gmail.com', password: 'dfdslfds34')
  end

  def create
    # @user = User.new(email: params[:email], username:params[:username], password: params[:password])

    @user = User.new(user_params)

    if @user.save
      redirect_to new_users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
