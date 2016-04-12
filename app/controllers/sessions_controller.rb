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
      redirect_to new_user_path, notice: "Пользователь с таким паролем не существует"
    end
  end

  def destroy
    session[:user_id] = nil
    current_user
    redirect_to root_path
  end
end
