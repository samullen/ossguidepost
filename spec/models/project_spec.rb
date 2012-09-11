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
    it { should ensure_length_of(:language).is_at_most(32) }
  end
end
