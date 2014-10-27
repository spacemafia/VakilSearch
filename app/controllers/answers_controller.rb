class AnswersController < ApplicationController

  def index
    @question = Question.find(params[:question_id])
    @answer = @question.answers.all 
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_content)
    @answer.question = @question
    @answer.user = current_user
    if @answer.save
       flash[:success] = "Answer created!"
       redirect_to user_question_path(:email => @question.user.id, :id => @question.id)
    end
  end

  def upvote
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.liked_by current_user
    redirect_to user_question_path(:email => @question.user.id, :id => @question.id)
    end

  def downvote
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.disliked_by current_user
    redirect_to user_question_path(:email => @question.user.id, :id => @question.id)
    end

  private

  def answer_content
    params.require(:answer).permit(:answer_content)
    end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
  end