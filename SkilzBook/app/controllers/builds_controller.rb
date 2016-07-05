class BuildsController < ApplicationController

  def new
    @skill = Skill.find(params[:skill_id])
    @build = Build.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @skill.builds.create(build_params)
    redirect_to @skill
  end
  def index
    @build = Build.find(params[:id])
  end
  def edit
    @skill = Skill.find(params[:skill_id])
    @build = Build.find(params[:id])
  end
  def show
    @skill = Skill.find(params[:skill_id])
    @build = Build.find(params[:id])
  end
  def update
    @skill = Skill.find(params[:skill_id])
    @build = Build.find(params[:id])
    @build.update(build_params)
    redirect_to @skill
  end



  private
  def build_params
    params.require(:build).permit(:name,:details,:img_url,:vid_url)
  end
end
