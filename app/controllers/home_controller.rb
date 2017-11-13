class HomeController < ApplicationController

  def index
    @user = current_user
    @role = current_user.role
  end

  def evaluated
    @step = current_user.step
  end

  def evaluator
    @employees = current_user.get_employees
  end
  
end
