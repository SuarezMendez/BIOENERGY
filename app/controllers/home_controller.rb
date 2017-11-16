class HomeController < ApplicationController

  def index
    @user = current_user
    @role = current_user.role
  end

  def evaluated
    @user = current_user
    @step = current_user.step
  end

  def evaluator
    @user = current_user
    @employees = current_user.get_employees
  end

end
