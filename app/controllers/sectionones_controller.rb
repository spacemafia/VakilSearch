class SectiononesController < ApplicationController
   before_action :signed_in_user, only: [:create, :upvote, :downvote]
    
  def index
    @article = Article.find(params[:article_id])
    @sectionone = @article.sectionones.all
  end

  def show
   @sectionone = Sectionone.find(params[:id])
   end

  def create
    @article = Article.find(params[:article_id])
    @sectionone = Sectionone.new(sectionone_params)
    @sectionone.article = @article
    @sectionone.user = current_user
    if @sectionone.save
       flash[:success] = "Comment created!"
       redirect_to @article
    end
  end

  def upvote
  @article = Article.find(params[:article_id])
  @sectionone = Sectionone.find(params[:id])
  @sectionone.liked_by current_user
  redirect_to @article
  end

  def downvote
  @article = Article.find(params[:article_id])
  @sectionone = Sectionone.find(params[:id])
  @sectionone.disliked_by current_user
  redirect_to @article
  end

  def destroy
   @sectionone = Sectionone.find(params[:id])
    if @sectionone.present?
      @sectionone.destroy
    else
    redirect_to articles_path
    end
  end

  private

  def sectionone_params
    params.require(:sectionone).permit(:contentone)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end