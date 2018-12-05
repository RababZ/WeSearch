class TasksController < ApplicationController
  def index
    #@tasks = Task.where(project: params[:project_id])
    @tasks = policy_scope(Task).where(project: params[:project_id])
  end
end
