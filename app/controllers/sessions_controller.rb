class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.idea
      redirect_to root_path, :notice => "Успешный вход"
    else
      flash.now.alert = "Пользователя с веденными паролем и email не существует"
      render "new"
    end
  end
end
