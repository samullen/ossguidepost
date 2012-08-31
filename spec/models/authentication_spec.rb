require 'spec_helper'

describe Authentication do
  describe "Assocations" do
    it { should belong_to :user }
  end
end
