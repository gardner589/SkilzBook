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
  def edit
    @skill = Skill.find(params[:skill_id])
    @build = Build.find(params[:id])
  end
  def update
    @skill = Skill.find(params[:skill_id])
    @build = Build.find(params[:id])
    @build.update(build_params)
    redirect_to skill_path
  end



  private
  def build_params
    params.require(:build).permit(:name,:details)
  end
end
