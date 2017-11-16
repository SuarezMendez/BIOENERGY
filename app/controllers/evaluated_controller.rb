
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
    @g_type = params[:g_type]
    @goals = current_user.get_goals_type(@g_type)
    if @goals.get_total_weight == 100
      current_user.update(step: 2)
      redirect_to evaluated_path
    else
      redirect_to evaluated_step_two_goals_path(:g_type => @g_type), :flash => { :error => "Tus objetivos deben sumar 100%" } 
    end

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
