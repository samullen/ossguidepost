class ProjectUpdatesController < ApplicationController
  def update
    @project = Project.find(params[:id])

    if Import.update_from_origin(@project)
      redirect_to(user_project_path(current_user, @project), :notice => 'Project was successfully updated.')
    end
  end
end
