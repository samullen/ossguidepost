require 'spec_helper'

describe Import do
  describe "github_import" do
    it "requires a name from which to pull repos" do
      lambda { Import.github_import }.should raise_error(ArgumentError)
      lambda { Import.github_import("username") {} }.should_not raise_error(ArgumentError)
    end

    it "requires a block" do
      lambda { Import.github_import("username") }.should raise_error(ArgumentError)
    end

    it "returns an array of objects specified in the block" do
      projects = Import.github_import("username") {|repo| repo}
      projects.should_not be_empty
    end
  end

  describe "update_from_origin", :focus do
    it "updates a project from it's origin" do
      project = FactoryGirl.create :project, :name => "ossguidepost", :full_name => "samullen/ossguidepost", :description => "Example description"

      Import.update_from_origin(project).should be_true
      project.description.should_not eql("Example description")
    end
  end
end
