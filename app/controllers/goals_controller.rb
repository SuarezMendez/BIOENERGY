class GoalsController < ApplicationController

  before_action :set_goal, only: [:show, :edit, :update, :destroy, :m_show]

  def new
    @goal = Goal.new
    @goal.periods.build
  end

  def show
  end

  def edit
  end

  def destroy
    @perspective = @goal.perspective_id
    @goal.destroy
    redirect_to evaluated_step_two_path
  end

  def update
    if @goal.update(goal_params)
      redirect_to evaluated_step_two_path
    else
      redirect_to edit_goal_path
    end
  end

  def m_show
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to evaluated_step_two_path
    else
      @errors = @goal.errors
      render new_goal_path
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
