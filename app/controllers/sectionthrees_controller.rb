class SectionthreesController < ApplicationController
     before_action :signed_in_user, only: [:create, :upvote, :downvote]
    
  def index
    @article = Article.find(params[:article_id])
    @sectionthree = @article.sectionthrees.all
  end

  def show
   @sectionthree = Sectionthree.find(params[:id])
   end

  def create
    @article = Article.find(params[:article_id])
    @sectionthree = Sectionthree.new(sectionthree_params)
    @sectionthree.article = @article
    @sectionthree.user = current_user
    if @sectionthree.save
       flash[:success] = "Comment created!"
       redirect_to @article
    end
  end

  def upvote
  @article = Article.find(params[:article_id])
  @sectionthree = Sectionthree.find(params[:id])
  @sectionthree.liked_by current_user
  redirect_to @article
  end

  def downvote
  @article = Article.find(params[:article_id])
  @sectionthree = Sectionthree.find(params[:id])
  @sectionthree.disliked_by current_user
  redirect_to @article
  end

  def destroy
   @sectionthree = Sectionthree.find(params[:id])
    if @sectionthree.present?
      @sectionthree.destroy
    else
    redirect_to root_url
    end
  end

  private

  def sectionthree_params
    params.require(:sectionthree).permit(:contentthree)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end