class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page], :per_page => 10)
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @questions = @user.questions.paginate(page: params[:page], :per_page => 10)
    @question = current_user.questions.build(params[:question_params]) if current_user
    @answer = @user.answers.sum(:cached_weighted_score)
    @sectionone = @user.sectionones.sum(:cached_weighted_score)
    @sectiontwo = @user.sectiontwos.sum(:cached_weighted_score)
    @sectionthree = @user.sectionthrees.sum(:cached_weighted_score)
    @sectionfour = @user.sectionfours.sum(:cached_weighted_score)
    @tally = @answer + @sectionone + @sectiontwo + @sectionthree + @sectionfour
  end

  def new
  	@user = current_user
  end

  def create
  @user = User.new(user_params)
  if @user.save
    sign_in @user
    flash[:success] = "Welcome to Consumer Tadka!"
  	redirect_to @user
  else
    render 'new'
  end
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

        # Before filters

    def signed_in_user
      unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in." 
    end
  end
   
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

        def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end