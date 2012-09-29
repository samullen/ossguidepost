class SearchController < ApplicationController
  def show
    @difficulties = [
      ["1 - Beginner", 1],
      ["2 - Novice", 2],
      ["3 - Intermediate", 3],
      ["4 - Journeyman", 4],
      ["5 - Master", 5],
    ]
    if params[:q].present?

    end
  end
end
