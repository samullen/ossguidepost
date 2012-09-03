class ProjectsController < ApplicationController
  def import
    if Project.import
      status = {:notice => "You projects were successfully imported"}
    else 
      status = {:alert => "There was a problem importing your projects"}
    end

    redirect_to user_path(current_user, status)
  end
end
