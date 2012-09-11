class GithubImportsController < ApplicationController
  def create
    Import.github_import(current_user.github_username) do |repo|
      current_user.projects.create(
        :name => repo.name || "unknown",
        :full_name => repo.full_name || "unknown",
        :description => repo.description || "unknown",
        :git_url => repo.git_url || "unknown",
        :homepage => repo.homepage || "unknown",
        :language => repo.language || "unknown"
      )
    end

    redirect_to user_path(current_user), :notice => "Your github repositories have been imported."
  end
end
