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
    @builds = Build.all
  end
  def edit
    @skill = Skill.find(params[:skill_id])
    @build = Build.find(params[:id])
  end
  def show
    @build = Build.find(params[:id])
    @skill = @build.skill
  end
  def update
    @skill = Skill.find(params[:skill_id])
    @build = Build.find(params[:id])
    @build.update(build_params)
    redirect_to @skill
  end
  def destroy
    @build = Build.find(params[:id])
    @skill = @build.skill
    @build.destroy
    redirect_to @skill
  end



  private
  def build_params
    # AM: Do you need to include `build_id` in your strong params? It seems that you can get that information in the URL.
    params.require(:build).permit(:name,:details,:img_url, :build_id)
  end
end
