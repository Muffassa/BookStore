class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      current_user
      redirect_to root_path, :notice => "Успешный вход"
    else
      flash.now.alert = "Пользователя с веденными паролем и email не существует"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    current_user
    redirect_to root_path
  end
end
