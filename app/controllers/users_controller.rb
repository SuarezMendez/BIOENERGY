class UsersController < ApplicationController

  before_action :set_user, only: [:update, :show]

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: 'Regitrado correctamente.'
    else
      render "new"
    end
  end

  def update
    if @user.update(user_params)
      redirect_to index_path, notice: 'Cambios guardados correctamente'
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :document, :role_id, :charge_id,
        :departament_id, :area_id, :step, :password, :password_confirmation,
        :boss)
    end

end
