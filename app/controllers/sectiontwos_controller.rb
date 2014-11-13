class SectiontwosController < ApplicationController
     before_action :signed_in_user, only: [:create, :upvote, :downvote]
    
  def index
    @article = Article.find(params[:article_id])
    @sectiontwo = @article.sectiontwos.all
  end

  def show
   @sectiontwo = Sectiontwo.find(params[:id])
   end

  def create
    @article = Article.find(params[:article_id])
    @sectiontwo = Sectiontwo.new(sectiontwo_params)
    @sectiontwo.article = @article
    @sectiontwo.user = current_user
    if @sectiontwo.save
       flash[:success] = "Comment created!"
       redirect_to @article
    end
  end

  def upvote
  @article = Article.find(params[:article_id])
  @sectiontwo = Sectiontwo.find(params[:id])
  @sectiontwo.liked_by current_user
  redirect_to @article
  end

  def downvote
  @article = Article.find(params[:article_id])
  @sectiontwo = Sectiontwo.find(params[:id])
  @sectiontwo.disliked_by current_user
  redirect_to @article
  end

  def destroy
   @sectiontwo = Sectiontwo.find(params[:id])
    if @sectiontwo.present?
      @sectiontwo.destroy
    else
    redirect_to articles_path
    end
  end

  private

  def sectiontwo_params
    params.require(:sectiontwo).permit(:contenttwo)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end