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

    it "skips private repos" do
      projects = Import.github_import("username") {|repo| repo}
      projects.any? {|project| project.name == "wordsearch" }.should be_false
    end
  end
end
