class SearchController < ApplicationController
  def show
    @difficulties = [
      ["1 - Beginner", 1],
      ["2 - Novice", 2],
      ["3 - Intermediate", 3],
      ["4 - Journeyman", 4],
      ["5 - Master", 5],
    ]

    if params[:search].present?
      @projects = Project.where(:language => params[:search][:language])
      @projects = @projects.where("difficulty <= ?", params[:search][:difficulty])
      @projects = @projects.search(params[:search][:q])

      p @projects
    end
  end
end
