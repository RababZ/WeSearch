class TasksController < ApplicationController
  def index
    @tasks = Task.where(project: params[:project_id])#Task.all.find(:id)
    #raise
  end
end
