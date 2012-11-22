require_relative "../minitest_helper"

describe Authentication do
  describe "Associations" do
    before do
      @authentication = Authentication.new
    end

    it("belongs to User") { @authentication.must_respond_to(:user) }
  end
end
