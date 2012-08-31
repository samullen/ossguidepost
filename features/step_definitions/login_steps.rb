Given /^I do not have an account$/ do
end

Given /^I have an account$/ do
  @current_user = FactoryGirl.create :user
  authentication = FactoryGirl.create :authentication, :user => @current_user
end

When /^I sign (?:up|in) (?:with|through) GitHub$/ do
  find(:link, "github-authentication").click
end

Then /^my account should be created$/ do
  User.count.should == 1
end
