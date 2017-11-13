class GoalsController < ApplicationController

  #before_action :set_goal, only: []

  def new
    @goal = Goal.new
    @goal.periods.build
    @g_type = params[:g_type]
  end

  def create
    @g_type = params[:g_type]
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to evaluated_step_two_goals_path(:g_type => @goal.g_type)
    else
      render "new"
    end
  end

  private
    def set_goal
      @goal = Goal.find(params[:id])
    end

    def goal_params
      params.require(:goal).permit(:perspective, :description, :generalIndicator,
         :specificIndicator, :formula, :weight, :measure, :user_id, :g_type,
         periods_attributes: [:periods, :attributes])

         #[:hobbies, :attributes]
    end
    
end
