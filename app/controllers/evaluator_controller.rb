class EvaluatorController < ApplicationController

  before_action :set_user, only: [:step_one, :step_two_employee, :step_two_goals]

  def index
  end

  def step_one
    @user.update(evaluation: Evaluation.create(approved: false, comment: "No comentarios aún."), step: 2)
    redirect_to evaluator_path, notice: 'Cambios guardados correctamente'
  end

  def step_two
    @employees = current_user.get_employees_step(3)
  end

  def step_two_employee
    @goals = @user.evaluation.goals
    @evaluation = @user.evaluation
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
