class EvaluatorController < ApplicationController

  before_action :set_user, only: [:step_two_employee, :step_two_goals]

  def index
  end

  def accept
    current_user.get_employees.where(step: 1).each do |e|
      e.update(step: 2)
    end
    redirect_to evaluator_path, notice: 'Cambios guardados correctamente'
  end

  def step_one
    @employees = current_user.get_employees.where(step: 1)
  end

  def step_two
    @employees = current_user.get_employees
  end

  def step_two_employee
  end

  def step_two_goals
    @g_type = params[:g_type]
    @goals = @user.goals.where(g_type: @g_type)
  end

  def step_three
  end

  def step_four
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

end
