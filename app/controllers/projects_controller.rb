class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = policy_scope(Project).order(created_at: :desc)
  end

  def show
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.manager = current_user
    @project.client = current_user
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
