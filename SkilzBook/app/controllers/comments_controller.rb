class CommentsController < ApplicationController
  def new
    @build = Build.find(params[:build_id])
    @comment = Comment.new
  end
end
