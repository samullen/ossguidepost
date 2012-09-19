class ProjectsController < ApplicationController
  def show
    user = User.find(params[:user_id])
    @project = Project.find_by_name(params[:id])
  end
end
