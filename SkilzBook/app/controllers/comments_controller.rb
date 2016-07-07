class CommentsController < ApplicationController
  def new
    @build = Build.find(params[:build_id])
    @comment = Comment.new
  end
  def create
    @build = Build.find(params[:build_id])
    @comment = @build.comments.create!(comment_params)
    redirect_to  @build
  end
  def update

  end
  def destroy
    @build = Build.find(params[:build_id])

  end
  private
  def comment_params
    params.require(:comment).permit(:body, :build_id)
  end
end
