class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end
  def new
    @skill =Skill.new
  end
  def show
    @skill = Skill.find(params[:id])
  end
  def create
    @skill = Skill.create(skill_params)
    redirect_to skills_path
  end
  def update
    @skill = Skill.find(params[:id])
    @skill.update(skill_params)
  end


  private
  def skill_params
    params.require(:skill).permit(:game)
  end
end
