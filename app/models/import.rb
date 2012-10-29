class Import
  def self.github_import(username)
    raise ArgumentError unless block_given?

    Octokit.repos(username).map { |repo| yield(repo) }
  end

  def self.update_from_origin(project)
    repo = Octokit.repo(project.full_name)

    attrs = {
      :description => repo.description,
      :homepage => repo.homepage,
      :language => repo.language.downcase
    }

    project.update_attributes(attrs)
  end
end
