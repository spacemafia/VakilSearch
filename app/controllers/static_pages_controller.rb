class StaticPagesController < ApplicationController
  def home
    @question = current_user.questions.build if signed_in?
    @user = current_user
    @users = User.all
    @questions = Question.all
    @articles = Article.all
    @answer = Answer.all
  end

  def about
  end

  def help
  end
end