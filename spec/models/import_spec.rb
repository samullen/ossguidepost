require 'spec_helper'

describe Import do
  describe "github_import" do
    it "requires a name from which to pull repos" do
      lambda { Import.github_import }.should raise_error(ArgumentError)
      lambda { Import.github_import("username") }.should_not raise_error(ArgumentError)
    end

    it "returns an array of Projects"

    it "retrieves repos for the specified user only"

    it "skips private repos"
  end
end
