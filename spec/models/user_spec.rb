require 'spec_helper'

describe User do
  describe "Associations" do
    it { should have_many(:authentications).dependent(:destroy) }
  end

#   describe "::create_with_omniauth(auth)" do
#     before do
#       @auth = FacebookAuth::auth
# 
#       @auth_with_name = @auth
#       @auth_with_name["info"]["first_name"] = nil
#       @auth_with_name["info"]["last_name"] = nil
#       @auth_with_name["info"]["name"] = "User Name"
# 
#       @auth_with_nil_url = @auth
#       @auth_with_nil_url["info"]["urls"].merge({
#         "Website" => nil,
#         "Example" => "http://example.example.com"
#       })
# 
# #       FakeWeb.register_uri(:get, "http://example.com/example_image.jpg", :body => File.dirname(__FILE__) + "/../files/example_image.jpg", :content_type => "image/jpeg")
#     end
# 
#     it "Creates a user and associated authentication" do
#       UserDecorator.create_with_omniauth(@auth)
#       user = User.first
#       user.first_name.should eq("User")
#       user.headline.should eq("Lorem ipsum dolor")
#       user.authentications.first.uid.should eq('1234567890')
# #       user.avatar.to_s.should match(/example_image\.jpg/)
# 
# #       user.user_links.map(&:name).should include('Blog', 'Example')
#     end
#   end
end
