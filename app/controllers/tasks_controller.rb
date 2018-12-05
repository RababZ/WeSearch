class TasksController < ApplicationController
  def index
    #@tasks = Task.where(project: params[:project_id])
    @tasks = policy_scope(Task).where(project: params[:project_id])
  end

  def new
    @task = Task.new
    @project = Project.find(params[:project_id])
    authorize @project
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @project = Project.find(params[:project_id])
    authorize @project
    authorize @task
    @task.project = @project
    #@task.user = current_user #the manager who affect the expert later
    if @task.save
      redirect_to project_tasks_path
    else
      render :new
    end

  end

  def edit
    @task = Task.find(params[:id])
    authorize @project
    authorize @task
  end

  def destroy
    @task = Task.find(params[:id])
    authorize @task
    if @task.destroy
      redirect_to project_tasks_path(@task.project)
    else
      redirect_to project_tasks_path
    end
  end


  private

  def task_params
    params.require(:task).permit(:title, :description, :start_date, :end_date, :deadline, :work_hours, :price)
  end

end
