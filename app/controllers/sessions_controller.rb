class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:document], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to index_path, notice: 'Has iniciado sesión correctamente.'
    else
      flash.now.alert = "Invalid document or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Has cerrado sesión correctamente.'
  end

end
