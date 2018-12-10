class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    #@projects = policy_scope(Project).order(created_at: :desc)
    case current_user.role
      when "manager"
        @projects = policy_scope(Project).order(created_at: :desc)#.where(manager: current_user)
      when "expert"
        @projects = policy_scope(Project).where(expert: current_user).order(created_at: :desc)
      when "client"
        @projects = policy_scope(Project).where(client: current_user).order(created_at: :desc)
    end

  end

  def show
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    #raise
    @project = Project.new(project_params)
    case current_user.role
      when "manager"
        @project.manager = current_user
        @project.client = nil
        @project.expert = nil
      when "expert"
        @project.manager = nil
        @project.client = nil
        @project.expert = current_user
      when "client"
        @project.manager = nil
        @project.client = current_user
        @project.expert = nil
    end
    @project.status = false
    authorize @project
    if @project.save
      redirect_to project_path(@project), notice: 'Project was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end

  def project_params
    params.require(:project).permit(:title, :description, :start_date, :end_date, :deadline, :nb_hours, :expertise_level, :industry, :country)
  end
end
