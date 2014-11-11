class SurveysController < ApplicationController
  before_action :admin_user, only: [:index, :destroy]
  before_action :signed_in_user, only: [:new]

  def index
    @surveys = Survey.all
    @survey = current_user.surveys.build
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = current_user.surveys.build
    @user = current_user
    @questions = Question.all
    @question = current_user.questions.build if current_user
    end

  def edit
  
  end

  def create
    @survey = current_user.surveys.build(survey_params)
    if @survey.save
        redirect_to root_url, notice: 'Successfully answered the survey.'
      else
        redirect_to questions_path
      end
  end

  def destroy
    @survey.destroy
    end

  private
    def survey_params
      params.require(:survey).permit(:qone, :qtwo, :qthree, :qfour, :qfive,
                                      :qsix, :qseven, :qeight)
    end

    def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end