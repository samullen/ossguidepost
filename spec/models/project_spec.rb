require 'spec_helper'

describe Project do
  it { FactoryGirl.build(:project).should be_valid }

  describe "Associations" do
    it { should belong_to :user }
  end

  describe "Validations" do
    subject { FactoryGirl.create :project }

    it { should validate_presence_of :name }
    it { should ensure_length_of(:name).is_at_most(64) }
    it { should validate_presence_of :full_name }
    it { should ensure_length_of(:full_name).is_at_most(128) }
    it { should validate_presence_of :full_name }
    it { should validate_uniqueness_of(:full_name).scoped_to(:user_id) }
    it { should ensure_length_of(:language).is_at_most(32) }
  end

  describe "::seeking_maintainer" do
    before do
      @unmaintained_project = FactoryGirl.create :unmaintained_project
      @maintained_project = FactoryGirl.create :project
    end

    it "includes projects which have seeking_maintainer_since defined" do
      Project.seeking_maintainer.should include(@unmaintained_project)
    end

    it "excludes Project which have seeking_maintainer_since set to nil" do
      Project.seeking_maintainer.should_not include(@maintained_project)
    end
  end

  describe "#seeking_maintainer?" do
    it "is true if seeking_maintainer_since is not null" do
      project = Project.new(:seeking_maintainer_since => Time.now)
      project.should be_seeking_maintainer
    end
  end

  describe "#seeking_maintainer=" do
    it "sets seeking_maintainer_since to current time when passed 'true'" do
      project = Project.new
      project.seeking_maintainer = true
      project.seeking_maintainer_since.should_not be_nil
    end

    it "sets seeking_maintainer_since to nil when passed 'false'" do
      project = Project.new(:seeking_maintainer_since => Time.now)
      project.seeking_maintainer = false
      project.seeking_maintainer_since.should be_nil
    end
  end
end
