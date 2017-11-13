
class EvaluatedController < ApplicationController

  def accept
    #current_user.update(step: 2)
    #redirect_to evaluated_path
  end

  def step_one
    @user = current_user
    @bosses = current_user.get_bosses
  end

  def step_two
    @user = current_user
  end

  def step_two_goals
    @g_type = params[:g_type]
    @goals = current_user.goals.where(g_type: @g_type)
  end

  def step_three
    #@user = current_user
    #@step = current_user.step
  end

  def step_four
    #@user = current_user
    #@step = current_user.step
  end

end
