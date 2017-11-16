class EvaluationsController < ApplicationController

  before_action :set_evaluation, only: [:update]

  def update
    if @evaluation.update(evaluation_params)
      redirect_to evaluator_step_two_path
    else
      redirect_to evaluator_step_two_employee(@evaluation.user)
    end
  end

  private
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    def evaluation_params
      params.require(:evaluation).permit(:comment, :approved,
        goals_attributes: [:goals, :attributes])
    end

end
