contents = File.join(Rails.root, "spec/fixtures/repos.json")
FakeWeb.register_uri(:get, %r|https://api\.github\.com/users/.+/repos|, :body => contents)
