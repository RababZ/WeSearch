class ProjectsController < ApplicationController


  def index
    @projects = Project.all
    #raise
  end

end
