
class EvaluatedController < ApplicationController

  def step_one
    @user = current_user
    @bosses = current_user.get_bosses
  end

  def step_two
    @user = current_user
  end

  def step_two_goals
    @g_type = params[:g_type]
    @goals = current_user.get_goals_type(@g_type)
  end

  def step_two_accept
    @evaluation = current_user.evaluation
    if @evaluation.validate_weight == true
      current_user.update(step: 3)
      redirect_to evaluated_path, :flash => { :notice => "Objetivos fijados correctamente" }
    else
      redirect_to evaluated_step_two_path, :flash => { :error => "Tus objetivos deben sumar 100%" }
    end
  end

  def step_three
    @user = current_user
    @evaluation = @user.evaluation
  end

  def step_four
    #@user = current_user
    #@step = current_user.step
  end

end
