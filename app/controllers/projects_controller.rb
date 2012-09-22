class ProjectsController < ApplicationController
  def show
    user = User.find(params[:user_id])
    @project = Project.find_by_name(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @project = Project.find_by_name(params[:id])
  end

  def update
    @project = current_user.projects.find_by_name(params[:id])

    if @project.update_attributes(params[:project])
      redirect_to(user_project_path(current_user, @project), :notice => 'Project was successfully updated.')
    end
  end
end
