class ProjectsController < ApplicationController
  # before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
    #raise
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
    @project.status = false
    authorize @project
    @project.save
    # if @project.save
    #   redirect_to project_path(@project)
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :start_date, :end_date, :deadline)
  end
end
