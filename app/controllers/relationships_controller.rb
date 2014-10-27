class RelationshipsController < ApplicationController
  before_action :signed_in_user

  def create
    @question = Question.find(params[:relationship][:followed_id])
    current_user.follow_question!(@question)
    redirect_to user_question_path(:email => @question.user.id, :id => @question.id)
  end

  def destroy
    @question = Relationship.find(params[:id]).followed
    current_user.question_unfollow!(@question)
    redirect_to user_question_path(:email => @question.user.id, :id => @question.id)
    end
end