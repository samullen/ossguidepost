require 'spec_helper'

describe User do
  describe "Associations" do
    it { should have_many(:authentications).dependent(:destroy) }
  end

  describe "::create_with_omniauth(auth)" do
    before do
      @auth = GithubAuth::auth

      @auth_with_name = @auth
      @auth_with_name["info"]["first_name"] = nil
      @auth_with_name["info"]["last_name"] = nil
      @auth_with_name["info"]["name"] = "User Name"

      @auth_with_nil_url = @auth
      @auth_with_nil_url["info"]["urls"].merge({
        "Website" => nil,
        "Example" => "http://example.example.com"
      })
    end

    it "Creates a user and associated authentication" do
      User.create_with_omniauth(@auth)
      user = User.first
      user.email.should eq("user@example.com")
      user.authentications.first.uid.should eq('1234567890')
    end
  end
end
