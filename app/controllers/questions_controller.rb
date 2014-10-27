class QuestionsController < ApplicationController
  before_action :signed_in_user, only: [:create, :edit, :update, :destroy]
  before_action :admin_user, only: [:destroy]
  
  def index
  @questions = Question.paginate(page: params[:page], :per_page => 10)
  @question = current_user.questions.build if current_user
  @user = @question.user if current_user
  @articles = Article.all
  end

  def edit
   @question = Question.find(params[:id])
   @user = current_user
  end

  def show
   @user = User.find(params[:email])
   @question = Question.find(params[:id])
   @questions = Question.all
   @answer = Answer.new(params[:answer_content])
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      flash[:success] = "Question created!"
      redirect_to user_question_path(:email => @question.user.id, :id => @question.id)
    else
    render 'shared/questions_form'
    end
  end

  def update
   @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to user_question_path(:email => @question.user.id, :id => @question.id)
      else
      render action: 'edit'    
    end
  end

  def destroy
   @question = Question.find(params[:id])
   @user = current_user
    if @question.present?
      @question.destroy
    end
    redirect_to questions_path
   end

  def tagged
  @question = Question.new
  @user = current_user
  @articles = Article.all
  @tag = params[:tag]
  if params[:tag].present? 
    @questions = Question.tagged_with(params[:tag])
    @questions = @questions.paginate(page: params[:page], :per_page => 10)
  else 
    @questions = Question.all
  end
  end

  private

  def question_params
    params.require(:question).permit(:content, :morecontent, :tag_list)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end


end