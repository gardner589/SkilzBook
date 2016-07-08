class LinksController < ApplicationController
  def index
    @build = Build.find(params[:build_id])
    @links = Link.all
  end
  def new
    @build = Build.find(params[:build_id])
    @link = Link.new
  end
  def create
    @build = Build.find(params[:build_id])
    @skill = @build.skill
    @build.links.create!(link_params)
    redirect_to @build
  end
  def edit
    @build = Build.find(params[:build_id])
    @link = Link.find(params[:id])
  end
  def update
    @build = Build.find(params[:build_id])
    @skill = @build.skill
    @link = Link.find(params[:id])
    @link.update(link_params)
    redirect_to @build
  end
  def destroy
    @build = Build.find(params[:build_id])
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to @build
  end

  private
  def link_params
    params.require(:link).permit(:link_url, :title, :build_id, :skill_id)
  end
end
