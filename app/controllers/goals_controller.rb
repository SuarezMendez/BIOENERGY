class GoalsController < ApplicationController

  before_action :set_goal, only: [:show, :m_show]

  def new
    @goal = Goal.new
    @goal.periods.build
    @perspective = Perspective.find(params[:g_type])
  end

  def show
  end

  def m_show
  end

  def create
    @g_type = params[:g_type]
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to evaluated_step_two_goals_path(:g_type => @goal.perspective_id)
    else
      @errors = @goal.errors
      redirect_to new_goal_path(:g_type => @goal.perspective_id)
    end
  end

  private
    def set_goal
      @goal = Goal.find(params[:id])
    end

    def goal_params
      params.require(:goal).permit(:description, :indicator, :formula, :weight,
        :num_periods, :evaluation_id, :perspective_id, :measure_id, :evaluation_id,
        periods_attributes: [:periods, :attributes])
    end

end
