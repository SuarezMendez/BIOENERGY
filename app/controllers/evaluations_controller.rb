class EvaluationsController < ApplicationController

  before_action :set_evaluation, only: [:show, :update]

  def show
    @user = @evaluation.user
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'evaluations/document',
        pdf: 'Documento',
        orientation: 'Landscape'
      end
    end
  end

  def update
    if @evaluation.update(evaluation_params)
      redirect_to evaluator_path
    else
      redirect_to evaluator_step_two_path(@evaluation.user)
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
