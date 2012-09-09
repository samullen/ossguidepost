class Import
  def self.github_import(username)
    raise ArgumentError unless block_given?

    Octokit.repos(username).map { |repo| yield(repo) unless repo.private }.compact
  end
end
