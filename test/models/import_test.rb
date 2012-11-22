require_relative "../minitest_helper"

describe Import do
  describe "github_import" do
    it "requires a name from which to pull repos" do
      proc { Import.github_import }.must_raise ArgumentError
    end

    it "requires a block" do
      proc { Import.github_import("username") }.must_raise(ArgumentError)
    end

    it "returns an array of objects specified in the block" do
      projects = Import.github_import("username") {|repo| repo}
      projects.wont_be_empty
    end
  end

  describe "update_from_origin" do
    it "updates a project from it's origin" do
      project = FactoryGirl.create :project, :name => "ossguidepost", :full_name => "samullen/ossguidepost", :description => "Example description"

      Import.update_from_origin(project).must_equal true
      project.description.wont_equal("Example description")
    end
  end
end
