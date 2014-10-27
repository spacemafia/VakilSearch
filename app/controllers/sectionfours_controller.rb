class SectionfoursController < ApplicationController
    
  def index
    @article = Article.find(params[:article_id])
    @sectionfour = @article.sectionfours.all
  end

  def show
   @sectionfour = Sectionfour.find(params[:id])
   end

  def create
    @article = Article.find(params[:article_id])
    @sectionfour = Sectionfour.new(sectionfour_params)
    @sectionfour.article = @article
    @sectionfour.user = current_user
    if @sectionfour.save
       flash[:success] = "Comment created!"
       redirect_to @article
    end
  end

  def upvote
  @article = Article.find(params[:article_id])
  @sectionfour = Sectionfour.find(params[:id])
  @sectionfour.liked_by current_user
  redirect_to @article
  end

  def downvote
  @article = Article.find(params[:article_id])
  @sectionfour = Sectionfour.find(params[:id])
  @sectionfour.disliked_by current_user
  redirect_to @article
  end

  def destroy
   @sectionfour = Sectionfour.find(params[:id])
    if @sectionfour.present?
      @sectionfour.destroy
    else
    redirect_to root_url
    end
  end

  private

  def sectionfour_params
    params.require(:sectionfour).permit(:contentfour)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end