class Api::V1::AnswersController < ApplicationController
  def index
    @answers = Answer.all
    render json: @answers
  end

  def show
   @answer = Answer.find(params[:id])
   render json: @answer
 end

  def create
    @answer = Answer.create(answer_params)
    render json: @answer
  end


  private

  def answer_params
    params.require(:answer).permit(
      :answer_str,
      :user_id,
      :plant_id,
      :question_id
    )
  end
end
