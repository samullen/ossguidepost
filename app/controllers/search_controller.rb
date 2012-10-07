class SearchController < ApplicationController
  def show
    search = params[:search]

    @difficulties = [
      ["1 - Beginner", 1],
      ["2 - Novice", 2],
      ["3 - Intermediate", 3],
      ["4 - Journeyman", 4],
      ["5 - Master", 5],
    ]

    if search.present?
      @projects = Project.where(:language => search[:language])
      @projects = @projects.where("difficulty <= ?", search[:difficulty].to_i)
      @projects = @projects.search(search[:q]) if search[:q].present?
      @projects = @projects.page(params[:page]).per(10)

      logger.info @projects.inspect
    end
  end
end
