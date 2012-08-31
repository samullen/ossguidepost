Given /^I do not have an account$/ do
end

When /^I sign up (?:with|through) GitHub$/ do
  find(:link, "github-authentication").click
end

Then /^my account should be created$/ do
  User.count.should == 1
end
