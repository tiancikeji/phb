class Api::QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render json: @questions
  end

  def show
    @question = Question.find(params[:id])
    render json: @question
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity 
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    render :json => "ok"
  end
end
